#!/bin/sh

while true
do
	PID=`pgrep ccx_2.18_MT`
	ETIMES=`/usr/bin/ps --pid ${PID} -h -o etimes`

	if [ $ETIMES -gt 60 ] ; then
		echo "Kill ${PID}"
		pkill ccx_2.18_MT
	fi
	sleep 30
done
	
