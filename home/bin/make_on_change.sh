#!/bin/bash
clear
make
while inotifywait -r -e MODIFY . >/dev/null 2>/dev/null
do 
	clear
	make
done
