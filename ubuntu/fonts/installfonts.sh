sudo apt install fonts-noto fonts-noto-cjk fonts-roboto
wget https://github.com/be5invis/Iosevka/releases/download/v1.13.4/02-iosevka-term-1.13.4.zip -O iosevka.zip
sudo apt install unzip
unzip iosevka.zip -d iosevka
mkdir -p ~/.local/share/fonts/
cp iosevka/ttf/*.ttf ~/.local/share/fonts/
cd ~/.local/share/fonts
fc-cache -v -f
cd -
rm -rf iosevka.zip iosevka
sudo cp /etc/fonts/conf.avail/30-cjk-aliases.conf /etc/fonts/conf.avail/30-cjk-aliases.conf.backup
sudo cp 30-cjk-aliases.conf /etc/fonts/conf.avail/
# Below set fonts; optional.
gsettings set org.gnome.desktop.interface document-font-name 'Roboto 11'
gsettings set org.gnome.desktop.interface font-name 'Roboto 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Iosevka Term 13'
