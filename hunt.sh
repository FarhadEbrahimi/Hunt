#!/bin/bash

# Get the username
read -p "Username: " user

# install zsh
sudo apt install zsh -y
# make changes to PATH
export PATH=$PATH:/usr/local/go/bin:/home/$user/go/bin:/home/$user/.local/bin
#pip3
sudo apt-get install python3-pip -y
# python2
sudo apt-get install python2.7 -y
# pip
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py # Fetch get-pip.py for python 2.7 
python2.7 get-pip.py
#pip --version
# download Go
wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
# # copy Go
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz
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
# htop
sudo apt-get install htop -y
# zip
sudo apt-get install zip -y
# unzip
sudo apt-get install unzip -y
# massdns
mkdir tools && cd ~/tools && git clone https://github.com/blechschmidt/massdns.git && cd massdns && make && sudo cp bin/massdns /usr/local/bin/
# masscan
cd ~/tools && git clone https://github.com/robertdavidgraham/masscan && cd masscan && make && sudo cp bin/masscan /usr/local/bin
# nmap
sudo apt-get install nmap
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
# dnsgen
pip3 install dnsgen
# uro
pip3 install uro
# selist
cd && mkdir wordlists && cd ~/wordlists && git clone https://github.com/danielmiessler/SecLists.git
# gowitness
go install github.com/sensepost/gowitness@latest
# ruby
sudo apt install ruby
# dependency for wpscan
sudo apt install build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev
# wpscan
sudo gem install wpscan
# h8mail
pip3 install h8mail
# jq
sudo apt-get install jq -y
# droopscan
cd ~/tools/ && git clone https://github.com/droope/droopescan.git && cd droopescan && pip install -r requirements.txt && cd

# install Oh my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#metasploit
#https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb

#echo "export PATH=$PATH:/usr/local/go/bin:/home/$user/go/bin:/home/$user/.local/bin" | anew ~/.zshrc
#source ~/.zshrc
