sudo apt update
sudo apt install gnome-tweaks
if [ -d "~/.themes" ]; then
    echo "DIRECTORY ALREADY FOUND, HENCE MOVING FILES INTO IT"
else
    mkdir ~/.themes
fi
if [ -d "~/.icons" ]; then
    echo "DIRECTORY ALREADY FOUND, HENCE MOVING FILES INTO IT"
else
    mkdir ~/.icons
fi
cp -r ./assets/themes/* ~/.themes/
cp -r ./assets/icons/* ~/.icons/

# ENABLING SHELL THEMES
sudo apt-get install gnome-shell-extensions
gnome-extensions enable user-themes@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.shell.extensions.user-themes enabled true
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-Dark"
gsettings set org.gnome.shell.theme "WhiteSur-Dark"
gsettings set org.gnome.desktop.interface icon-theme "Win10Sur"
gsettings set org.gnome.desktop.interface cursor-theme "McMojave Cursors"
cp ./assets/wallpaper/* ~/.local/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri ~/.local/share/backgrounds/1.png

echo -e "\n\nSome additional extensions are recommended, links to them are below."
echo -e "\e]8;;https://extensions.gnome.org/extension/1162/emoji-selector/\aEmoji Selector\e]8;;\a"
echo -e "\e]8;;https://extensions.gnome.org/extension/3210/compiz-windows-effect/\aCompiz Window Effect\e]8;;\a"
echo -e "\e]8;;https://extensions.gnome.org/extension/2/move-clock/\aMove Clock\e]8;;\a"
echo -e "\e]8;;https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/\aLamp Effect\e]8;;\a"
echo -e "\e]8;;https://extensions.gnome.org/extension/3193/blur-my-shell/\aBlur My Shell\e]8;;\a"
