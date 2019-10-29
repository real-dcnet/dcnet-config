#!/bin/bash

sudo ip netns add host6
sudo ip link set eno1 netns host6

sudo ip netns exec host6 ip link set lo up
sudo ip netns exec host6 ip link set eno1 up
sudo ip netns exec host6 ip addr add 128.10.135.51/24 dev eno1
sudo ip netns exec host6 ip route add default via 128.10.135.1 dev eno1
sudo ip netns exec host6 ip -f inet addr show

sudo ip netns exec host6 /usr/sbin/sshd -o PidFile=/run/sshd-host6.pid -o ListenAddress=128.10.135.51

