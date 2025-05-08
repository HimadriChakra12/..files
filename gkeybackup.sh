#!/bin/bash

# Output backup file
BACKUP_FILE="gnome-keybindings-backup.ini"

# Backup specific keybinding sections
{
    echo "# GNOME Keyboard Shortcuts Backup"
    echo
    echo "[org/gnome/desktop/wm/keybindings]"
    dconf dump /org/gnome/desktop/wm/keybindings/
    echo
    echo "[org/gnome/settings-daemon/plugins/media-keys]"
    dconf dump /org/gnome/settings-daemon/plugins/media-keys/
    echo
    echo "[org/gnome/mutter/keybindings]"
    dconf dump /org/gnome/mutter/keybindings/
} > "$BACKUP_FILE"

echo "Backup saved to $BACKUP_FILE"

