##############
## Monitors ##
##############

xrandr --output HDMI-1 --right-of DP-2
xrandr --output HDMI-0 --left-of DP-2
xrandr --output DP-2 --mode 2560x1440

################
## Background ##
################

$HOME/.fehbg

## Disable power management and sleep
xset -dpms
xset s 0 0

picom &
dwmblocks &
exec dwm
