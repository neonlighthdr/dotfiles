cp -r .termux .config $HOME
sleep 1
exec fish
sleep 2
termux-reload-settings
