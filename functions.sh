#!/usr/bin/bash

up="before"
since="before"
echo $up $since
# globally scoped variable

showuptime() {
	# local up=$(uptime -p | cut -c4-)
	# local since=$(uptime -s)
	
    	# Get system uptime
    	uptime=$(powershell -Command "(Get-WmiObject win32_operatingsystem).lastbootuptime") 
	# Convert uptime to human-readable format 
	local up=$(powershell -Command "([Management.ManagementDateTimeconverter]::ToDateTime('${uptime}'))")
    	# Get boot time
    	local since=$(powershell -Command "(Get-WmiObject win32_operatingsystem).ConvertToDateTime((Get-WmiObject Win32_OperatingSystem).LastBootUpTime)")

	cat << EOF
---------------
This machine has been up for ${up}
It has been running since ${since}
---------------
EOF
}
showuptime
