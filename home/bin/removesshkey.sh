#!/bin/bash

# Check for proper number of command line args.

EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0` {linea a borrar}"
  exit $E_BADARGS
fi

sed -i "$1d" ~/.ssh/known_hosts


