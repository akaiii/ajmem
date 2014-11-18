#!/bin/sh

#expect time
t1=$1
t2=$2
mem=$3

dat=$(date +%u%k%M)

echo $t1
echo $dat


sleep_time=$((($t1/10000-$dat/10000)*24*60+($t1/100-$dat/100)*60+($t1%100)-($dat%100)))


if [ $sleep_time -lt 0 ];then
	sleep_time=$((7*24*60+$sleep_time))
fi
echo $sleep_time > s.log

#sleep "$sleep_time"m
#sudo xl mem-set ws 1024


sleep_time=$((($t2/10000-$t1/10000)*24*60+($t2/100-$t1/100)*60+($t2%100)-($t1%100)))


if [ $sleep_time -lt 0 ];then
	sleep_time=$((7*24*60+$sleep_time))
fi
echo $sleep_time > s.log

#sleep "$sleep_time"m
#sudo xl mem-set ws 512

