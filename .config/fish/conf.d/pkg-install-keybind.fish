function pkg_install_template
    commandline -i "pkg install -y "
end

bind \ci pkg_install_template

# to use it, simply press CTRL+i and "pkg install -y" will appear. 
