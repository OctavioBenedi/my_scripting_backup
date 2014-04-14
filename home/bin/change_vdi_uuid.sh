#!/bin/bash


EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0` {dvi hard disk image path}"
  exit $E_BADARGS
fi

vboxmanage internalcommands sethduuid $1
