#!/bin/bash
set -euo pipefail

LOGFILE="health.log"

THRESHOLD=80

DISK=$(df -h / | awk 'NR==2{print $5}' | tr -d '%')
MEM=$(free | awk '/Mem/{printf "%.0f", $3/$2*100}')
CPU=$(awk -v c="$(nproc)" '{printf "%.0f", ($1/c)*100}' /proc/loadavg)

log() {
	local level="$1"
	shift
	echo "$(date '+%F%T') [$level]$*" | tee -a "$LOGFILE"
}

check() { 
	local name="$1"
	local usage="$2"

	if [ "$usage" -gt "$THRESHOLD" ]; then
		log "ERROR" "$name at High is: $usage"
	else
		log "INFO" "$name at Normal is: $usage"
	fi
}



check "Disk" "$DISK"
check "Memory" "$MEM"
check "CPU" "$CPU"
