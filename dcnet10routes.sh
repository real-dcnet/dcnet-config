sudo ip link add dev veth0 type veth peer name veth1
sudo ip link set veth0 up
sudo ip link set veth1 netns host3

sudo ip netns exec ip link add dev virbr1 type bridge 
sudo ip netns exec ip link set enp1s0f1 master virbr1
sudo ip netns exec ip link set veth1 master virbr1
sudo ip netns exec ip link set virbr1 up
sudo ip netns exec ip link set veth1 up

sudo ip route add 128.10.126.50/32 dev eno1
sudo ip route add 128.10.126.58/32 dev eno1
sudo ip route add 128.10.126.66/32 dev eno1
sudo ip route add 128.10.126.74/32 dev eno1
sudo ip route add 128.10.126.82/32 dev eno1
sudo ip route add 128.10.126.90/32 dev eno1

sudo ip netns exec ip route add 128.10.126.57/32 dev virbr1
