sudo ip netns exec host1 arping -U -I eno2 128.10.126.83 -w 5
sudo ip netns exec host2 arping -U -I enp1s0f0 128.10.126.84 -w 5
sudo ip netns exec host3 arping -U -I enp1s0f1 128.10.126.85 -w 5
sudo ip netns exec host4 arping -U -I enp132s0f0 128.10.126.86 -w 5
sudo ip netns exec host5 arping -U -I enp132s0f1 128.10.126.87 -w 5
sudo ip netns exec host6 arping -U -I enp132s0f2 128.10.126.88 -w 5
sudo ip netns exec host7 arping -U -I enp132s0f3 128.10.126.89 -w 5
