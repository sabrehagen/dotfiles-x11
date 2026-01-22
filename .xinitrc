# Set session environment variables
export XDG_SESSION_TYPE=x11

# Apply x server config
xrdb -merge $HOME/.Xresources

# Enable numlock
numlockx on

# Set keyboard repeat delay and rate
xset r rate 155 80

# Map key modifiers
setxkbmap -option caps:swapescape

# Map touchpad middle click to left click
xinput set-button-map $(xinput list --name-only | grep -i synaptics | xargs -I@ xinput list --id-only "@") 1 1 3 4 5 6 7

# Set touchpad direction
xinput set-prop "$(xinput list --name-only | grep -i synaptics)" "libinput Natural Scrolling Enabled" 0

# Set resolution
xrandr --size 1920x1080

# Start ssh server
sudo service ssh start

# Start i3
exec /usr/local/bin/i3
