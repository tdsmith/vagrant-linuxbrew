#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
echo ". ~/.bashrc" > ~/.bash_profile
echo "export PATH=~/.linuxbrew/bin:$PATH" >> ~/.bash_profile
git clone https://github.com/Homebrew/linuxbrew ~/.linuxbrew
