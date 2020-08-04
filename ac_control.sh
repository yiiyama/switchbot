#!/bin/bash

SCRIPTDIR=$(cd $(dirname $(readlink -f $0)); pwd)

AC=$1
CMD=$2

if [ $AC = "1" ]
then
  MACADDR="f4:c3:cf:64:2d:00"
elif [ $AC = "2" ]
then
  MACADDR="cc:34:03:2a:a9:67"
elif [ $AC = "3" ]
then
  MACADDR="cb:2c:03:05:d0:ad"
fi

[ $CMD ] || CMD=Press

$SCRIPTDIR/switchbot.py $MACADDR $CMD
