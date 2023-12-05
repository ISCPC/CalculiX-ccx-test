#!/bin/sh

CCX_EXE=ccx_2.21_MT

while true
do
	PID=`pgrep ${CCX_EXE}`
	if [ "$PID" != "" ]; then
		ETIMES=`/usr/bin/ps --pid ${PID} -h -o etimes`

		if [ $ETIMES -gt 60 ] ; then
			echo "Kill ${PID}"
			pkill ${CCX_EXE}
		fi
	fi
	sleep 30
done
