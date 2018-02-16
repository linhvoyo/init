

#V2

# https://www.cyberciti.biz/faq/linux-list-network-interfaces-names-command/
1. ip link | egrep "^[0-9]*: " | cut -d " " -f2 | sed s'/:$//'

# https://www.cyberciti.biz/faq/linux-ip-command-examples-usage-syntax/ip-command-show-address-ethernet-interface/
2. ip addr show eth0 | grep inet | cut -d " " -f 8

# https://superuser.com/questions/239701/how-can-i-find-out-my-wifi-adapters-mac-address-on-ubuntu-linux
3. ip addr show eth0 | grep link/ether  | cut -d " " -f 6

# https://serverfault.com/questions/47915/how-do-i-get-the-default-gateway-in-linux-given-the-destination
4. ip route show default| awk '/default/ {print $3}'

#still looking
5.


#https://www.cyberciti.biz/faq/linux-unix-find-out-dns-server-ip-address-names/
6. 
