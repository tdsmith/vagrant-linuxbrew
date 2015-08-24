#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev ruby-dev libx11-dev libxt-dev
su -l vagrant <<EOS
    printf '0a\nexport PATH=~/.linuxbrew/bin:\$PATH\n.\nw\n' | ed ~/.bashrc 2>&1 > /dev/null
    [ -d ~/.linuxbrew ] || git clone https://github.com/Homebrew/linuxbrew ~/.linuxbrew
EOS
