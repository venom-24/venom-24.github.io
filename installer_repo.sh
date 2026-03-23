#! /data/data/com.termux/files/usr/bin/bash


pkg install gnupg wget -y

[ ! -d $PREFIX/etc/apt/sources.list.d ] && mkdir $PREFIX/etc/apt/sources.list.d

if [ ! -f "$PREFIX/etc/apt/sources.list.d/venom24.list" ]; then

	echo -e "deb https://github.com/venom-24/Venom24.github.io my-packtools termux " > $PREFIX/etc/apt/sources.list.d/venom24.list

	wget -qP $PREFIX/etc/apt/trusted.gpg.d https://github.com/venom-24/Venom24.github.io/venom24.gpg
	apt update
else 
	echo "repo already installed"
fi 

