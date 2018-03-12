nslookup 42.fr | grep "Address" | cut -f2 -d "	" | sed "1d" # need to change it to command output

#163.172.250.12