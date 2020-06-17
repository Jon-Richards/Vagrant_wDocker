#!/usr/bin/env bash

sudo apt-get update

# Install packages to enable apt to use a repository over https
sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install gnupg-agent
sudo apt-get install -y software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the latest stable Docker repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install docker engine
sudo apt-get update
sudo apt-get install -y docker-ce
sudo apt-get install -y docker-ce-cli
sudo apt-get install -y containerd.io

# Install the .NET SDK
# See: https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#1804-
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install -y dotnet-sdk-3.1

# Runtime only
# sudo apt-get update
# sudo apt-get install -y aspnetcore-runtime-3.1

# Clone the dotnet demo app if it doesn't already exist in the shared folder.
if [ ! -d /vagrant/dotnet-docker ]; then
   git clone https://github.com/dotnet/dotnet-docker /vagrant/dotnet-docker
fi