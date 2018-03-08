#!/bin/bash
	for ((i=$1; i>0; i--)); do
		sleep 1 &
		echo -e "$i"
		wait
	done
