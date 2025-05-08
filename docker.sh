#!/bin/bash

if command -v docker &> /dev/null
then
    echo "✅ Docker is already installed. Skipping installation."
else
    echo "🔧 Docker not found. Installing now..."

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl enable --now docker
    echo "✅ Docker installation completed."
fi
