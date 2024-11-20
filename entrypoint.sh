#!/bin/bash
set -e 

# Add Dockers official GPG key
apt-get update
apt-get install ca-certificates curl -y
install -m 0755 -d /etc/apt/keyrings
curl -fssl http://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to APT sources
echo \
   "deb [arch=$(dpkg --print-architechure) signed-by=etc/apt/keyrings/Docker.asc] http://Download.docker.com/linux/ubuntu \
   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

   # install Docker
   apt-get update
   apt-get install docker-ce docker-ce-cil containerd.io docker-buildx-plugin docker-compose-plugin -y 
#verify Docker installation
docker --Version

