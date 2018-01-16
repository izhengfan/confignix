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
sudo cp 30-cjk-aliases.conf /etc/fonts/conf.avail/
