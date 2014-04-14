#!/bin/bash

EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Debe indicar el directorio a monitorizar: `basename $0` {Directory name}"
  exit $E_BADARGS
fi

clear
echo "Monitorizando $1 con quilt"
while inotifywait -r -e MODIFY $1 >/dev/null 2>/dev/null
do 
	quilt refresh
done
