#! /bin/bash

echo "================================================================"
echo "======== Welcome to the Fxlinux Discourse CMS installer ========"
echo "================================================================"

# INSTALLING DOCKER
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y


#INSTALLING DISCOURSE
sudo mkdir /var/discourse
sudo git clone https://github.com/discourse/discourse_docker.git /var/discourse
cd /var/discourse
sudo ./discourse-setup

echo "============================ DONE! ============================="
echo "= Wait a minute or two as setup might be running in background ="
echo "====== Finalize installation at 'https://your.domain.com' ======"
echo "===================== https://fxlinux.com ======================"
