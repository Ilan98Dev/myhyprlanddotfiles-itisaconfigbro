#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Game Mode. Turning off all animations

notif="$HOME/.config/swappy/images/bell.png"

HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = true ]; then
  hyprctl dispatch togglegamemode
  awww img "$HOME/.config/Wallpapers/cave-sunset-view.png" --transition-type random --transition-duration 1 &
  notify-send -e -u low -i "$notif" " Gamemode:" " enabled"
  sleep 0.1
  exit
else
  awww img "$HOME/.config/Wallpapers/rainy-day.gif" --transition-type random --transition-duration 1 &
  sleep 0.5
  hyprctl reload
  notify-send -e -u normal -i "$notif" " Gamemode:" " disabled"
  exit
fi
hyprctl reload
