#!/bin/bash
la=$(cat /proc/loadavg | cut -d ' ' -f 1)
la=$(bc<<<$la*100 | cut -d '.' -f 1)
pr=$(nproc)
la=$(($la/$pr))
if [[ $la -le 100 ]]; then
echo $((100-$la)) > /etc/keepalived/la.txt
else echo 1 > /etc/keepalived/la.txt;
fi;
