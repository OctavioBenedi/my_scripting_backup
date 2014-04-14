#!/bin/bash
#set -vx
# Check for proper number of command line args.

MANDATORY_ARGS=2
OPT_ARGS=1
E_BADARGS=65

MAX_ARGS=$(( $OPT_ARGS + $MANDATORY_ARGS ))

#echo $MAX_ARGS


if [ $# -lt $(( $MAX_ARGS +1 )) ]
then
  if [ $# -lt $MANDATORY_ARGS ]
  then
    echo "Usage: `basename $0` {VLAN VID} {IP address for interface} [priority]"
    exit $E_BADARGS
  fi
else
    echo "Usage: `basename $0` {VLAN VID} {IP address for interface} [priority]"
    exit $E_BADARGS
fi

sudo vconfig add eth1 $1
sudo ifconfig eth1.$1 up
sudo ifconfig eth1.$1 $2 netmask 255.255.255.0

PRIO={8:-$3}
#PRIO=$3

if [ -z $3 ]
then
  echo "Use default prio"
else
  if [ $3 -ge 0 ]
  then
    if [ $3 -le 7 ]
    then
      sudo vconfig set_egress_map eth1.$1 0 $3
    else
      echo "Invalid priority"
    fi
  else
      echo "Invalid priority"
  fi
fi

interfaces_ip

