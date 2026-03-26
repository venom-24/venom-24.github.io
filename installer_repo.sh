#! /data/data/com.termux/files/usr/bin/bash


pkg install gnupg wget -y

[ ! -d $PREFIX/etc/apt/sources.list.d ] && mkdir $PREFIX/etc/apt/sources.list.d

if [ ! -f "$PREFIX/etc/apt/sources.list.d/venom24.list" ]; then

	echo -e "deb [trusted=yes]   https://venom-24.github.io/termux_repo stable main" > $PREFIX/etc/apt/sources.list.d/venom24.list

	wget -qP $PREFIX/etc/apt/trusted.gpg.d https://venom-24.github.io/venom24.gpg
	apt update
else 
	echo "repo already installed"
fi 

