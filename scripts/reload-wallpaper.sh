#!/bin/bash

# Determine primary screen resolution
DIMENSION_WIDTH=`xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1`
DIMENSION_HEIGHT=`xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2`

# Load random wallpaper: https://wallhaven.cc/help/api
WALLPAPER_URL=`curl -s "https://wallhaven.cc/api/v1/search?ratios=${DIMENSION_WIDTH}x${DIMENSION_HEIGHT}&atleast=${DIMENSION_WIDTH}x${DIMENSION_HEIGHT}&sorting=random" | jq -r '.data[0].path'`

# Download it
wget -q -nc $WALLPAPER_URL -P /opt/.wallpaper/ &>/dev/null

# Get its name
WALLPAPER_NAME=`basename $WALLPAPER_URL`

# Set it as wallpaper and screensaver/lockscreen
gsettings set org.gnome.desktop.background picture-uri "file:///opt/.wallpaper/$WALLPAPER_NAME"
gsettings set org.gnome.desktop.screensaver picture-uri "file:///opt/.wallpaper/$WALLPAPER_NAME"