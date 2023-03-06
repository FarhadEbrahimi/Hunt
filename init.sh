# Get the username
read -p "Username: " user
# System update and upgrade
sudo apt-get update && sudo apt-get upgrade -y
# Add user
sudo adduser $user
# make user sudo
sudo usermod -aG sudo $user