#Installing
sudo pacman -S thunar thunar-volman tumbler ffmpegthumbnailer \
  thunar-archive-plugin thunar-media-tags-plugin gvfs catfish
yay -S apple-fonts

# GTK Theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme && ./install.sh -d ~/.themes -c dark

# Icon Theme
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme && ./install.sh -d ~/.icons -c dark

# Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors && ./install.sh -c dark

#GNOME-ing
gsettings set org.gnome.desktop.interface gtk-theme 'WhiteSur-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'WhiteSur-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'WhiteSur-cursors'
gsettings set org.gnome.desktop.interface font-name 'SF Pro Display 11'

