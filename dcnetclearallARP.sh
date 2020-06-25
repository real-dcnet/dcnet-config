#!/bin/bash

cleararp(){
sudo ip -s -s neigh flush all
for i in $(seq 1 7)
do
	echo "==========flushing ARP cache for host$i=========="
	sudo ip netns exec host$i ip -s -s neigh flush all
done
exit
}

for j in $(seq 0 5)
do
	ssh -o StrictHostKeyChecking=no -t dcnet@128.10.126.$((50+8*j)) "$(declare -f cleararp); cleararp"
	echo "==========$((j+1)) server(s) done=========="
done
