networksetup -listallnetworkservices
#or
#ifconfig
#to list only ethernet interfaces
#networksetup -listallnetworkservices | grep -A2 ".*Ethernet"