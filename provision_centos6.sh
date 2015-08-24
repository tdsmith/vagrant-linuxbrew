#!/bin/bash
yum -y update
yum -y groupinstall 'Development Tools'
yum -y install curl git m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel ruby-devel libX11-devel libXt-devel

su -l vagrant <<EOS
    echo 'export PATH=~/.linuxbrew/bin:\$PATH' >> ~/.bashrc
    [ -d ~/.linuxbrew ] || git clone https://github.com/Homebrew/linuxbrew ~/.linuxbrew
    SYSTEM_GCC=`gcc --version | grep -Po '\d\.\d' | head -1`
    [ -f ~./linuxbrew/bin/gcc-\$SYSTEM_GCC ] || ln -s `which gcc` ~/.linuxbrew/bin/gcc-\$SYSTEM_GCC
    [ -f ~./linuxbrew/bin/g++-\$SYSTEM_GCC ] || ln -s `which g++` ~/.linuxbrew/bin/g++-\$SYSTEM_GCC
EOS
