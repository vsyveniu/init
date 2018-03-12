#nslookup 42.fr | grep "Address" | cut -f2 -d "	" | sed "1d"

#result of nslookup 42.fr

Server:		10.51.1.253
Address:	10.51.1.253#53

Non-authoritative answer:
Name:	42.fr
Address: 163.172.250.11
Name:	42.fr
Address: 163.172.250.12


#163.172.250.12