#!/bin/bash

echo "Updating and upgrading your system..."
sudo apt-get update && sudo apt-get upgrade -y

echo "Installing Docker..."
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=arm64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "Verifying Docker installation..."
sudo docker run hello-world

echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

if groups ubuntu | grep -q '\bdocker\b'; then
    echo "The user 'ubuntu' is already in the 'docker' group."
else
    sudo usermod -aG docker ubuntu
    echo "Added 'ubuntu' to the 'docker' group. Please log out and log back in to apply these changes!"
fi

echo "Docker installation complete."
