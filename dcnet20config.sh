#!/bin/bash

# Host 0 on eno1
#sudo ip netns add host0
#sudo ip link set eno1 netns host0
#
#sudo ip netns exec host0 ip link set lo up
#sudo ip netns exec host0 ip link set eno1 up
#sudo ip netns exec host0 ip addr add 128.10.126.66/24 dev eno1
#sudo ip netns exec host0 ip route add default via 128.10.126.1 dev eno1
#sudo ip netns exec host0 ip -f inet addr show
#sudo ip netns exec host0 /usr/sbin/sshd -o PidFile=/run/sshd-host0.pid -o ListenAddress=128.10.126.66

# Host 1 on eno2
sudo ip netns add host1
sudo ip link set eno2 netns host1

sudo ip netns exec host1 ip link set lo up
sudo ip netns exec host1 ip link set eno2 up
sudo ip netns exec host1 ip addr add 128.10.126.67/24 dev eno2
sudo ip netns exec host1 ip route add default via 128.10.126.1 dev eno2
sudo ip netns exec host1 ip -f inet addr show
sudo ip netns exec host1 /usr/sbin/sshd -o PidFile=/run/sshd-host1.pid -o ListenAddress=128.10.126.67

# Host 2 on enp1s0f0 
sudo ip netns add host2
sudo ip link set enp1s0f0 netns host2

sudo ip netns exec host2 ip link set lo up
sudo ip netns exec host2 ip link set enp1s0f0 up
sudo ip netns exec host2 ip addr add 128.10.126.68/24 dev enp1s0f0
sudo ip netns exec host2 ip route add default via 128.10.126.1 dev enp1s0f0
sudo ip netns exec host2 ip -f inet addr show
sudo ip netns exec host2 /usr/sbin/sshd -o PidFile=/run/sshd-host2.pid -o ListenAddress=128.10.126.68

# Host 3 on enp1s0f1 
sudo ip netns add host3
sudo ip link set enp1s0f1 netns host3

sudo ip netns exec host3 ip link set lo up
sudo ip netns exec host3 ip link set enp1s0f1 up
sudo ip netns exec host3 ip addr add 128.10.126.69/24 dev enp1s0f1
sudo ip netns exec host3 ip route add default via 128.10.126.1 dev enp1s0f1
sudo ip netns exec host3 ip -f inet addr show
sudo ip netns exec host3 /usr/sbin/sshd -o PidFile=/run/sshd-host3.pid -o ListenAddress=128.10.126.69

# Host 4 on enp132s0f0 
sudo ip netns add host4
sudo ip link set enp132s0f0 netns host4

sudo ip netns exec host4 ip link set lo up
sudo ip netns exec host4 ip link set enp132s0f0 up
sudo ip netns exec host4 ip addr add 128.10.126.70/24 dev enp132s0f0
sudo ip netns exec host4 ip route add default via 128.10.126.1 dev enp132s0f0
sudo ip netns exec host4 ip -f inet addr show
sudo ip netns exec host4 /usr/sbin/sshd -o PidFile=/run/sshd-host4.pid -o ListenAddress=128.10.126.70

# Host 5 on enp132s0f1 
sudo ip netns add host5
sudo ip link set enp132s0f1 netns host5

sudo ip netns exec host5 ip link set lo up
sudo ip netns exec host5 ip link set enp132s0f1 up
sudo ip netns exec host5 ip addr add 128.10.126.71/24 dev enp132s0f1
sudo ip netns exec host5 ip route add default via 128.10.126.1 dev enp132s0f1
sudo ip netns exec host5 ip -f inet addr show
sudo ip netns exec host5 /usr/sbin/sshd -o PidFile=/run/sshd-host5.pid -o ListenAddress=128.10.126.71

# Host 6 on enp132s0f2 
sudo ip netns add host6
sudo ip link set enp132s0f2 netns host6

sudo ip netns exec host6 ip link set lo up
sudo ip netns exec host6 ip link set enp132s0f2 up
sudo ip netns exec host6 ip addr add 128.10.126.72/24 dev enp132s0f2
sudo ip netns exec host6 ip route add default via 128.10.126.1 dev enp132s0f2
sudo ip netns exec host6 ip -f inet addr show
sudo ip netns exec host6 /usr/sbin/sshd -o PidFile=/run/sshd-host6.pid -o ListenAddress=128.10.126.72

# Host 7 on enp132s0f3
sudo ip netns add host7
sudo ip link set enp132s0f3 netns host7

sudo ip netns exec host7 ip link set lo up
sudo ip netns exec host7 ip link set enp132s0f3 up
sudo ip netns exec host7 ip addr add 128.10.126.73/24 dev enp132s0f3
sudo ip netns exec host7 ip route add default via 128.10.126.1 dev enp132s0f3
sudo ip netns exec host7 ip -f inet addr show
sudo ip netns exec host7 /usr/sbin/sshd -o PidFile=/run/sshd-host7.pid -o ListenAddress=128.10.126.73
