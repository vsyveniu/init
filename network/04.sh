route -n get default
#command below will print default gatawey for internet and internet6
#netstat -nr |  awk '/default/ {print $2}'
#command below will print only default gateway for internet (first entry)
#netstat -nr |  awk '/default/ {if (index($6, "en") > 0 ) {print $2}}'