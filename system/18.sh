sudo iptables -A INPUT -p -tcp -s 10.0.0.0/8 -j ACCEPT

#just full path
#sudo/sbin/iptables -A INPUT -p -tcp -s 10.0.0.0/8 -j ACCEPT