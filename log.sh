#!/bin/bash

if [ -z "$1" ]; then
	echo "Argument not provided"
	exit 1
fi

log_dir="$1"

if [ ! -d "$log_dir" ]; then
	echo "Direct: y does not exist: $log_dir"
	exit 1
fi

archive_dir="$HOME/log_archives"
log_file="$archive_dir/archive.log"

mkdir -p "$archive_dir"

#make timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

tar -czf "$archive_dir/logs_archive_${timestamp}.tar.gz" "$log_dir"

if [ $? -eq 0 ]; then
	echo "Archive was succesfull"
else
	echo "Archive failed"
fi


