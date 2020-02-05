sudo ip netns exec host1 arping -U -I eno2 128.10.126.59 -w 5
sudo ip netns exec host1 arping -U -I enp1s0f0 128.10.126.60 -w 5
sudo ip netns exec host1 arping -U -I enp1s0f1 128.10.126.61 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f0 128.10.126.62 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f1 128.10.126.63 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f2 128.10.126.64 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f3 128.10.126.65 -w 5
