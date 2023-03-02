#!/bin/bash

# Get the username
read -p "Username: " user
# System update and upgrade + htop
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install htop -y
# Add user
sudo adduser $user
# make user sudo
sudo usermod -aG sudo $user
# install zsh
sudo apt install zsh -y
# change to user: $user
su $user
pip3
sudo apt-get install python3-pip
# python2
sudo apt-get install python2.7 -y
# pip
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py # Fetch get-pip.py for python 2.7 
python2.7 get-pip.py
pip --version
# download Go
wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
# # copy Go
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz
# add Go to PATH
export PATH=$PATH:/usr/local/go/bin:/home/$user/go/bin:/home/$user/.local/bin
# git
sudo apt-get install git -y
# nuclei
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
# subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
# ffuf
go install github.com/ffuf/ffuf@latest
# httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
# dnsx
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
# tlsx
go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
# notify
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
# Naabu
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
# install gcc
sudo apt-get install gcc -y
# install pcap
sudo apt-get install libpcap-dev -y
# install make
sudo apt-get install build-essential -y
# massdns
mkdir tools && cd ~/tools && git clone https://github.com/blechschmidt/massdns.git && cd massdns && make
# shuffledns
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
# waybackurls
go install github.com/tomnomnom/waybackurls@latest
# unfurl
go install github.com/tomnomnom/unfurl@latest
# gf
go install github.com/tomnomnom/gf@latest
# qsreplace
go install github.com/tomnomnom/qsreplace@latest
# anew
go install -v github.com/tomnomnom/anew@latest
# gxss
go install github.com/KathanP19/Gxss@latest
# asnmap
go install github.com/projectdiscovery/asnmap/cmd/asnmap@latest
# # install Oh my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# dnsgen
pip3 install dnsgen
# uro
pip3 install uro
# sexlist
cd ~/wordlists && git clone https://github.com/danielmiessler/SecLists.git
# ruby
sudo apt install ruby
# dependency for wpscan
sudo apt install build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev
# wpscan
sudo gem install wpscan
#metasploit
#https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb
