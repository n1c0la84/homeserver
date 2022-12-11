#! /bin/bash

#OMV install
read -rsp $'\nOMV install. Press enter to continue...\n' -n1 key

wget https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install
chmod +x install
sudo ./install

#Docker install
read -rsp $'\nDocker install. Press enter to continue...\n' -n1 key

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi

#Docker compose install
read -rsp $'\nDocker compose install. Press enter to continue...\n' -n1 key

sudo apt install python3-pip
pip3 install docker-compose

#Building containers
read -rsp $'\nBuilding containers. Press enter to continue...\n' -n1 key

git clone https://github.com/n1c0la84/homeserver.git
cd homeserver

docker compose up --detach