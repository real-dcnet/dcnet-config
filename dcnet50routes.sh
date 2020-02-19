sudo sysctl net.ipv4.ip_forward=1
sudo ip link add dev veth5 type veth peer name veth0
sudo ip link set veth0 netns host5

sudo ip netns exec host5 ip link add dev virbr0 type bridge 
sudo ip netns exec host5 ip link set enp132s0f1 master virbr0
sudo ip netns exec host5 ip link set veth0 master virbr0
sudo ip netns exec host5 ip link set virbr0 up
sudo ip netns exec host5 ip link set veth0 up
sudo ip netns exec host5 ip addr del 128.10.126.95 dev enp132s0f1
sudo ip netns exec host5 ip route add 128.10.126.0/25 dev virbr0

virsh net-create --file dcnet50network.xml
sudo ip link set veth5 master virbr5
sudo ip link set virbr5 up
sudo ip link set veth5 up
sudo ip route del 128.10.126.0/24
sudo ip addr add 128.10.126.95/25 dev virbr5

sudo ip route add 128.10.126.50/32 dev eno1
sudo ip route add 128.10.126.58/32 dev eno1
sudo ip route add 128.10.126.66/32 dev eno1
sudo ip route add 128.10.126.74/32 dev eno1
sudo ip route add 128.10.126.82/32 dev eno1
sudo ip route add 128.10.126.90/32 dev eno1
