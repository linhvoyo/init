#V2 Network

# https://www.cyberciti.biz/faq/linux-list-network-interfaces-names-command/
1. ip link | egrep "^[0-9]*: " | cut -d " " -f2 | sed s'/:$//'

# https://www.cyberciti.biz/faq/linux-ip-command-examples-usage-syntax/ip-command-show-address-ethernet-interface/
2. ip addr show eth0 | grep inet | cut -d " " -f 8

# https://superuser.com/questions/239701/how-can-i-find-out-my-wifi-adapters-mac-address-on-ubuntu-linux
3. ip addr show eth0 | grep link/ether  | cut -d " " -f 6

# https://serverfault.com/questions/47915/how-do-i-get-the-default-gateway-in-linux-given-the-destination
4. ip route show default| awk '/default/ {print $3}'

#https://www.thegeekstuff.com/2012/07/nslookup-examples/?utm_source=tuicool
*5. nslookup slash16.org | head -n1 | cut -d ":" -f2 | tr -d "[:blank:]"

#https://www.cyberciti.biz/faq/linux-unix-find-out-dns-server-ip-address-names/
6. /etc/resolv.conf

#https://www.computerhope.com/unix/unslooku.htm
*7. nslookup slash16.org $(nslookup -type=any slash16.org | grep nameserver| head -n1 | cut -d "=" -f2 | tr -d "[:blank:]")

#https://hostadvice.com/tools/whois/#slash16.org
8. The web hosting provider for slash16.org is Amazon Web service

#nslookup 42.fr | grep "Address: " | cut -d " " -f2
9.  163.172.250.12
    163.172.250.11

# https://itsfoss.com/how-to-find-what-devices-are-connected-to-network-in-ubuntu/
# https://superuser.com/questions/311019/display-list-of-computers-on-a-lan-in-linux
#https://www.howtogeek.com/190148/8-common-network-utilities-explained/
#https://hackertarget.com/nmap-cheatsheet-a-quick-reference-guide/
10.


#
12. ping -c1 10.51.1.253
