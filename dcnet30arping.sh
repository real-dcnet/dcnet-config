sudo ip netns exec host1 arping -U -I eno2 128.10.126.75 -w 5
sudo ip netns exec host1 ping -c 5 128.10.126.51
sudo ip netns exec host2 arping -U -I enp1s0f0 128.10.126.76 -w 5
sudo ip netns exec host2 ping -c 5 128.10.126.51
sudo arping -U -I virbr3 128.10.126.77 -w 5
ping -c 5 128.10.126.51
sudo ip netns exec host4 arping -U -I enp132s0f0 128.10.126.78 -w 5
sudo ip netns exec host4 ping -c 5 128.10.126.51
sudo ip netns exec host5 arping -U -I enp132s0f1 128.10.126.79 -w 5
sudo ip netns exec host5 ping -c 5 128.10.126.51
sudo ip netns exec host6 arping -U -I enp132s0f2 128.10.126.80 -w 5
sudo ip netns exec host6 ping -c 5 128.10.126.51
sudo ip netns exec host7 arping -U -I enp132s0f3 128.10.126.81 -w 5
sudo ip netns exec host7 ping -c 5 128.10.126.51
