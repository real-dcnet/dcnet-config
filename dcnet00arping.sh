sudo ip netns exec host1 arping -U -I eno2 128.10.126.51 -w 5
sudo ip netns exec host1 ping -c 5 128.10.126.51
sudo ip netns exec host2 arping -U -I enp1s0f0 128.10.126.52 -w 5
sudo ip netns exec host2 ping -c 5 128.10.126.51
sudo ip netns exec host3 arping -U -I enp1s0f1 128.10.126.53 -w 5
sudo ip netns exec host3 ping -c 5 128.10.126.51
sudo ip netns exec host4 arping -U -I enp132s0f0 128.10.126.54 -w 5
sudo ip netns exec host4 ping -c 5 128.10.126.51
sudo ip netns exec host5 arping -U -I enp132s0f1 128.10.126.55 -w 5
sudo ip netns exec host5 ping -c 5 128.10.126.51
sudo ip netns exec host6 arping -U -I enp132s0f2 128.10.126.56 -w 5
sudo ip netns exec host6 ping -c 5 128.10.126.51
#sudo ip netns exec host7 arping -U -I enp132s0f3 128.10.126.57 -w 5
