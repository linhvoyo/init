
#pulling debian docker
eval $(docker-machine env default)
  # if you get this error: Error checking TLS connection: Host is not running
  # try restarting default
  docker-machine stop default
  docker-machine start default
  eval $(docker-machine env default)

docker pull debian



#docker run command
docker run -it --rm -v $(pwd):/data debian
docker run -it --rm -v $(pwd):/data  --cap-add SYS_ADMIN  debian:jessie
#intall nslookup
apt-get update
apt-get install -y dnsutils

iptables
cron
nano
net-tools
traceroute
procps

openssh-client
openssh-server

#docker build command
docker build . -t linhvoyo/debian
#need this for iptables
docker run -it --rm -v $(pwd):/data  --cap-add=SYS_ADMIN --cap-add=NET_ADMIN  debian:jessie

#build containter as root
https://medium.com/@mccode/processes-in-containers-should-not-run-as-root-2feae3f0df3b

docker run -it --rm -v $(pwd):/data  --privileged debian:jessie

docker run -it --rm -v $(pwd):/data  --privileged linhvoyo/debian


docker run --rm -v $(pwd):/data  --privileged linhvoyo/debian bash /data/run.sh
