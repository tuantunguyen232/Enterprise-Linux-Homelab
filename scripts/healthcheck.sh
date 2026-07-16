#!/bin/bash

show_header()
{
	echo "==============================================="
	echo "          LINUX SERVER HEALTH REPORT           "
	echo "==============================================="
	echo
}

show_hostname()
{
	echo "Host name          : $(hostname)"
	echo "Date               : $(date '+%Y-%m-%d %H:%M:%S')"
	echo
}

check_ssh()
{
	if systemctl is-active --quiet ssh
	then
		echo "SSH Service        : RUNNING"
	else
		echo "SSH Service        : STOPPED"
	fi
}

check_samba()
{
	if systemctl is-active --quiet smbd
	then
		echo "Samba Service      : RUNNING"
	else
		echo "Samba Service      : STOPPED"
	fi
}

check_firewall()
{
	if ufw status | grep -q "Status: active"
	then
		echo "Firewall           : ACTIVE"
	else
		echo "Firewall           : IN-ACTIVE"
	fi
}

check_cpu()
{
	CPU_load=$(uptime | awk -F'load average: ' '{print $2}' | cut -d',' -f1)
	echo "CPU Load           : $CPU_load"
}

check_ram()
{
	RAM_usage=$(free | awk '/Mem:/ {printf("%.2f"), $3/$2 *100}')
	echo "Memory Usage       : ${RAM_usage}%"
}

check_disk()
{
	DISK_usage=$(df -h / | tail -1 | awk '{print $5}')
	DISK_percent=$(echo "$DISK_usage" | tr -d '%')
	echo "Disk Usage         : ${DISK_usage}"

	if [ "$DISK_percent" -ge 80 ]
	then
		echo "WARNING            : Disk usage is above 80%!"
	else
		echo "Disk Status        : OK"
	fi
}

check_uptime()
{
	UPTIME=$(uptime -p)
	echo "Uptime             : $UPTIME"
}

main()
{
	show_header

	show_hostname
	echo

	check_ssh
	check_samba
	check_firewall
	echo

	check_cpu
	check_ram
	check_disk
	check_uptime

	echo
	echo "==============================================="
}

main
