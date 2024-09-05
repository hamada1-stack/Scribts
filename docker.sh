#!/bin/bash
# enable if ubuntu
#sudo ufw allow outbound
#sudo ufw deny inbound
#sudo ufw allow tcp/22
#sudo ufw allow ssh

echo " Step 1 Completed"

sudo modprobe kvm
sudo modprobe kvm_intel
sudo modprobe kvm_amd
sudo usermod -aG kvm $USER


echo " Step 2 Completed"

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt install gnome-terminal
cd ~
cd ./Downloads
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb
sudo dpkg -i ./docker-desktop-amd64.deb

echo "Step 3 COmpleted"

systemctl --user start docker-desktop
systemctl --user enable docker-desktop

echo "Step 4 Completed"



