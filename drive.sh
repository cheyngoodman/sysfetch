#!/bin/bash

raw_drive=$(head /sys/block/*/size)
if [[ ! -z $raw_drive ]] ; then	
	let "drive_size = $raw_drive / 100"
	echo -ne "$drive_size"
fi
