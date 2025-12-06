#!/data/data/com.termux/files/usr/bin/bash

rm -f $PREFIX/etc/motd $PREFIX/etc/motd.sh $PREFIX/etc/motd-playstore

clear

apt update
curl -sL -o ~/.termux/font.ttf https://github.com/ryanoasis/nerd-fonts/raw/refs/heads/master/patched-fonts/Hack/Bold/HackNerdFont-Bold.ttf
sleep 1
curl -sL -o ~/.termux/termux.properties https://github.com/neonlighthdr/dotfiles/raw/refs/heads/main/.termux/termux.properties
sleep 2
termux-setup-storage

termux-reload-settings

sleep 3
yes | apt upgrade
clear
sleep 1
apt install -y fish micro
echo "exec fish" >> ~/.bashrc
mkdir -p ~/.config/fish
echo "set fish_greeting" > ~/.config/fish/config.fish
sleep 2
source ~/.bashrc

clear
