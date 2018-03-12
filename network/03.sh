#en1 is usually reffered to wi-fi. I used it, because i can't turn on wi-fi card on MAC, seems like user have no permission to do that in cluster
networksetup -getmacaddress en | grep "..:..:..:..:..:" | cut -f3 -d " "
#ifconfig en1 | awk '/ether/{print $2}'