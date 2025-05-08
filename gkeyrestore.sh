#!/bin/bash

# Input file
BACKUP_FILE="gnome-keybindings-backup.ini"

# Check if the file exists
if [[ ! -f "$BACKUP_FILE" ]]; then
    echo "Backup file '$BACKUP_FILE' not found!"
    exit 1
fi

# Restore each section
restore_section() {
    local section="$1"
    local path="$2"
    awk -v sec="$section" '
        $0 ~ "\\["sec"\\]" {flag=1; next}
        /^\[.*\]/ {flag=0}
        flag {print}
    ' "$BACKUP_FILE" | dconf load "$path"
}

restore_section "org/gnome/desktop/wm/keybindings" "/org/gnome/desktop/wm/keybindings/"
restore_section "org/gnome/settings-daemon/plugins/media-keys" "/org/gnome/settings-daemon/plugins/media-keys/"
restore_section "org/gnome/mutter/keybindings" "/org/gnome/mutter/keybindings/"

echo "GNOME keybindings restored from $BACKUP_FILE"
#!/bin/bash

# Input file
BACKUP_FILE="gnome-keybindings-backup.ini"

# Check if the file exists
if [[ ! -f "$BACKUP_FILE" ]]; then
    echo "Backup file '$BACKUP_FILE' not found!"
    exit 1
fi

# Restore each section
restore_section() {
    local section="$1"
    local path="$2"
    awk -v sec="$section" '
        $0 ~ "\\["sec"\\]" {flag=1; next}
        /^\[.*\]/ {flag=0}
        flag {print}
    ' "$BACKUP_FILE" | dconf load "$path"
}

restore_section "org/gnome/desktop/wm/keybindings" "/org/gnome/desktop/wm/keybindings/"
restore_section "org/gnome/settings-daemon/plugins/media-keys" "/org/gnome/settings-daemon/plugins/media-keys/"
restore_section "org/gnome/mutter/keybindings" "/org/gnome/mutter/keybindings/"

echo "GNOME keybindings restored from $BACKUP_FILE"
#!/bin/bash

# Input file
BACKUP_FILE="gnome-keybindings-backup.ini"

# Check if the file exists
if [[ ! -f "$BACKUP_FILE" ]]; then
    echo "Backup file '$BACKUP_FILE' not found!"
    exit 1
fi

# Restore each section
restore_section() {
    local section="$1"
    local path="$2"
    awk -v sec="$section" '
        $0 ~ "\\["sec"\\]" {flag=1; next}
        /^\[.*\]/ {flag=0}
        flag {print}
    ' "$BACKUP_FILE" | dconf load "$path"
}

restore_section "org/gnome/desktop/wm/keybindings" "/org/gnome/desktop/wm/keybindings/"
restore_section "org/gnome/settings-daemon/plugins/media-keys" "/org/gnome/settings-daemon/plugins/media-keys/"
restore_section "org/gnome/mutter/keybindings" "/org/gnome/mutter/keybindings/"

echo "GNOME keybindings restored from $BACKUP_FILE"
#!/bin/bash

# Input file
BACKUP_FILE="gnome-keybindings-backup.ini"

# Check if the file exists
if [[ ! -f "$BACKUP_FILE" ]]; then
    echo "Backup file '$BACKUP_FILE' not found!"
    exit 1
fi

# Restore each section
restore_section() {
    local section="$1"
    local path="$2"
    awk -v sec="$section" '
        $0 ~ "\\["sec"\\]" {flag=1; next}
        /^\[.*\]/ {flag=0}
        flag {print}
    ' "$BACKUP_FILE" | dconf load "$path"
}

restore_section "org/gnome/desktop/wm/keybindings" "/org/gnome/desktop/wm/keybindings/"
restore_section "org/gnome/settings-daemon/plugins/media-keys" "/org/gnome/settings-daemon/plugins/media-keys/"
restore_section "org/gnome/mutter/keybindings" "/org/gnome/mutter/keybindings/"

echo "GNOME keybindings restored from $BACKUP_FILE"

