networksetup -listallnetworkservices

#to list only ethernet interfaces
#networksetup -listallnetworkservices | grep -A2 ".*Ethernet"