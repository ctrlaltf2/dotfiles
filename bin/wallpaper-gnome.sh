#!/bin/bash

while true; do
    gsettings set org.gnome.desktop.background picture-uri file://$(ls -w 1 ~/Pictures/Wallpapers/winter/* | shuf | head -n1);
    sleep 300;
done;
