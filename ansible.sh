#!/bin/bash


if command -v ansible &> /dev/null
then
    echo "✅ Ansible is already installed. Skipping installation."
else
    echo "🔧 Ansible not found. Installing EPEL and Ansible..."

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y
yum install ansible* -y

    echo "✅ Ansible installation completed."
fi

