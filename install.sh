#!/bin/bash
cp ./benq.edid /etc/X11
cp ./10-monitor.conf /usr/share/X11/xorg.conf.d

cat <<EOT >> /etc/lightdm/lightdm.conf
[Seat:*]
display-setup-script=xrandr --output DVI-I-1 --primary --mode 1440x900
EOT

