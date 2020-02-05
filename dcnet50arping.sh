sudo ip netns exec host1 arping -U -I eno2 128.10.126.91 -w 5
sudo ip netns exec host1 arping -U -I enp1s0f0 128.10.126.92 -w 5
sudo ip netns exec host1 arping -U -I enp1s0f1 128.10.126.93 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f0 128.10.126.94 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f1 128.10.126.95 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f2 128.10.126.96 -w 5
sudo ip netns exec host1 arping -U -I enp132s0f3 128.10.126.97 -w 5
