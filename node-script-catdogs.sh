#! /bin/bash

# Enable ssh password authentication
echo "Enable SSH password authentication:"
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl reload sshd

# update 
sudo apt update -y
sudo mkdir -p /mnt/data
sudo chmod 777 /mnt/data
