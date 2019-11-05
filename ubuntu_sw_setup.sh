#!/usr/bin/env bash
#This script install the necessary software packages for the ubuntu environment needed to Operationalize an ML app
# Step 1: Install Git
sudo apt -y upgrade
sudo apt install -y git

# Step 2: Install Docker
sudo apt install -y docker.io

# Step 3: Install make
sudo apt install -y make

# Step 4: Install python-pip
sudo apt install -y python-pip

# Step 5: install curl
sudo apt install -y curl

# Step 6: install vim
sudo apt install -y vim

#Step 7: install hadolint as a binary using wget
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.2/hadolint-Linux-x86_64 &&  sudo chmod +x /bin/hadolint

# Step 8: install kubectl
sudo snap install kubectl –classic

# Step 9: install minikube
sudo curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && sudo chmod +x minikube && sudo mv minikube /usr/local/bin/

# Step 10: install socat
sudo apt install -y socat
