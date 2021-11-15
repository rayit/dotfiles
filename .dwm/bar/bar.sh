#!/bin/sh
interval=0

cpu() {
	cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

	printf "CPU"
	printf " $cpu_val"
}

battery() {
	get_capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
	printf "   $get_capacity"
}

brightness() {
	printf "   "
	printf "%.0f\n" $(cat /sys/class/backlight/*/brightness)
}

mem() {
	printf "  "
	printf " $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

wlan() {
	case "$(cat /sys/class/net/w*/operstate 2>/dev/null)" in
	up) printf " 󰤨 %s" " Connected" ;;
	down) printf " 󰤭 %s" " Disconnected" ;;
	esac
}

clock() {
	printf " 󱑆 "
	printf " $(date '+%Y-%m-%d %H:%M') "
}

while true; do
	interval=$((interval + 1))
	sleep 1 && xsetroot -name "$updates $(battery) $(cpu) $(mem) $(wlan) $(clock)"
done
