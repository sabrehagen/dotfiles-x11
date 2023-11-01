# Apply x server config
xrdb -merge $HOME/.Xresources

# Enable numlock
numlockx on

# Set keyboard repeat delay and rate
xset r rate 155 80

# Map key modifiers
setxkbmap -option caps:swapescape

# Set resolution
xrandr --size 1920x1080

# Start ssh server
sudo service ssh start

# Start i3
exec /usr/bin/i3
