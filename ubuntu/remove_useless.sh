sudo apt-get remove libreoffice-calc libreoffice-math thunderbird unity-webapps* gnome-mahjongg gnome-sudoku gnome-maps aisleriot totem cheese empathy gnome-orca
sudo apt remove unity-scope-firefoxbookmarks \
    unity-scope-chromiumbookmarks \
    unity-scope-virtualbox \
    unity-scope-gdrive \
    unity-scope-devhelp \
    unity-scope-openclipart \
    unity-scope-yelp \
    unity-scope-manpages \
    unity-scope-calculator \
    unity-scope-launchpad \
    unity-scope-tomboy \
    unity-scope-zotero \
    unity-scope-texdoc \
    unity-scope-video-remote \
    unity-scope-colourlovers \
    unity-scopes-runner

sudo apt-get autoremove
gsettings set com.canonical.Unity.Lenses remote-content-search 'none'
gsettings set org.gnome.software download-updates false
cd /usr/share/dbus-1/services
sudo cp org.gnome.evolution.dataserver.AddressBook.service org.gnome.evolution.dataserver.AddressBook.service.backup
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.AddressBook.service
sudo cp org.gnome.evolution.dataserver.Calendar.service org.gnome.evolution.dataserver.Calendar.service.backup
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.Calendar.service
sudo cp org.gnome.evolution.dataserver.Sources.service org.gnome.evolution.dataserver.Sources.service.backup
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.Sources.service
sudo cp org.gnome.evolution.dataserver.UserPrompter.service org.gnome.evolution.dataserver.UserPrompter.service.backup
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.UserPrompter.service
cd /etc/xdg/autostart/
echo "TODO: find gnome-software and update-notifier to set the NoDisplay to false"
