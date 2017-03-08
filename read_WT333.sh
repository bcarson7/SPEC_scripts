#!/bin/sh	

if [ $# -lt 3 ]
then 
   echo "Usage: read_WT210_BW.sh <number of samples> <sample interval> <output filename>"
   exit
fi

date > $3

clear
echo Collecting $1 Yokogawa WT210 power samples on $2 second intervals
echo
echo
sleep 1 

x=1
count=$1

while [ $x -le $count ]; 
do
        echo Sample# $x
        stty -F /dev/ttyUSB0 speed 9600 cs8 -cstopb -parenb && READ=`dd if=/dev/ttyUSB0 count=7`
        echo Sample# $x:  $READ >> $3
	let x=$x+1
        sleep $2
done

date >> $3
