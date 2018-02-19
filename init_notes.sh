
#installing docker
eval $(docker-machine env default)
docker pull debian
#docker run command
docker run -it --rm -v $(pwd):/data debian
docker run -it --rm -v $(pwd):/data  --cap-add SYS_ADMIN  debian:jessie
#intall nslookup
apt-get update
apt-get install -y dnsutils

iptables


#need this for iptables
docker run -it --rm -v $(pwd):/data  --cap-add=SYS_ADMIN --cap-add=NET_ADMIN  debian:jessie

#build containter as root
https://medium.com/@mccode/processes-in-containers-should-not-run-as-root-2feae3f0df3b

docker run -it --rm -v $(pwd):/data  --privileged debian:jessie
