cp -r .termux .config $HOME
sleep 1
exec fish
cd
termux-reload-settings
