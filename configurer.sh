#!/bin/bash

# List of applications
apps=(
"gcc clang tcc make cmake go" \
"vim-huge git valgrind man-pages-devel man-pages-posix tmux ctags cloc ed gdb openjdk" \
"curl wget netcat nmap traceroute" \
"gdu htop zip unzip netcat mc lm_sensors jq acpi PopCorn os-prober" \
"xorg xrandr i3 i3status xcompmgr alsa-utils alsa-tools alsa-plugins-pulseaudio dbus-elogind" \
"font-iosevka noto-fonts-cjk noto-fonts-ttf" \
"firefox libreoffice telegram-desktop qbittorrent rofi obs xfe xfce4-terminal pcmanfm qemu-system-amd64 xcompmgr mupdf scrot" \
"ffmpeg mpv feh ImageMagick gimp audacity kdenlive mypaint ffmepgthumbnailer" \
"cifs-utils ntfs-3g samba samba-cups pmount" \
"pfetch fastfetch cowsay fortune")

# Create a dialog checklist
choices=$(dialog --checklist "Select applications to install:" 15 50 4 \
    1 "compiling" off \
    2 "programming" off \
    3 "network" on \
    4 "misc" off \
    5 "x11" off \
    6 "fonts" off \
    7 "x11 apps" off \
    8 "media" off \
    9 "file systems" off \
    10 "fun" on \
    3>&1 1>&2 2>&3)

# Exit if the user cancels
if [ $? -ne 0 ]; then
    echo "Cancelled."
    exit
fi

# Convert the choices into an array
selected_apps=()
for app in $choices; do
    selected_apps+=("${apps[$app-1]}")
done
reset
# Display the selected applications
echo "${selected_apps[@]}"
echo $selected_apps
sudo xbps-install $selected_apps[@]
