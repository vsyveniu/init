networksetup -listallnetworkservices
#or
ifconfig -l
#to list only ethernet interfaces
#networksetup -listallnetworkservices | grep -A2 ".*Ethernet"