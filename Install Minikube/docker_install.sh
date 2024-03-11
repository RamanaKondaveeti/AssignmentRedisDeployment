#!/bin/bash

# Update the apt package index
sudo apt update 

# Install packages to allow apt to use a repository over HTTPS
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable Docker repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index again
# sudo apt update 

# Install the latest version of Docker Engine
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Verify Docker installation by running a simple container
sudo docker run hello-world

# Add your user to the docker group to run Docker commands without sudo
adduser minikube
usermod -aG sudo minikube
# su - minikube

# Login to the newly created User
# su - minikube

#Add User to the Docker Group

sudo groupadd docker
sudo usermod -aG docker $USER

