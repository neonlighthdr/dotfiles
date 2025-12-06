#!/data/data/com.termux/files/usr/bin/bash

clear
termux-setup-storage
apt update
curl -sL -o ~/.termux/font.ttf https://github.com/ryanoasis/nerd-fonts/raw/refs/heads/master/patched-fonts/Hack/Bold/HackNerdFont-Bold.ttf
sleep 1
curl -sL -o ~/.termux/termux.properties https://github.com/neonlighthdr/dotfiles/raw/refs/heads/main/.termux/termux.properties
sleep 2

termux-reload-settings

sleep 1
apt upgrade -y -o Dpkg::Options::="--force-confold"
clear
sleep 1
apt install -y fish micro
clear
#chsh -s fish
#echo "exec fish" >> ~/.bashrc
#mkdir -p ~/.config/fish
#echo "set fish_greeting" > ~/.config/fish/config.fish
#sleep 2
#source ~/.bashrc
#chsh ~/../usr/bin/bash
