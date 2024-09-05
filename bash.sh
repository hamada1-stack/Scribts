#!/bin/bash
echo " Enter A Username"
read username
echo " Enter A Password"
read -s password
sudo adduer -m $username
echo "$username:$password" | chpasswd
echo  username: $username has Been Added Succefully

sudo apt-get update -y
sudo autoremove -y
echo "Your System Is Clean now"

