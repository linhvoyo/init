
#installing docker
eval $(docker-machine env default)
docker pull debian
#docker run command
docker run -it --rm -v $(pwd):/data debian
