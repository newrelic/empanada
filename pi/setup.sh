#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo
  echo "Script must be run as root!"
  echo
  exit 1
fi

echo
echo "Configuring your pi for Empanada..."

#
# Display settings
#
sed -e 's/^#hdmi_mode=.*$/hdmi_mode=16/'  \
    -e 's/^#hdmi_drive=.*$/hdmi_drive=2/' \
    -i /boot/config.txt

echo " - HDMI Settings updated (Reboot required)"

#
# Disable power savings for X
#
sed -e 's/^#xserver-command=X.*$/xserver-command=X -s 0 -dpms/' \
    -i /etc/lightdm/lightdm.conf

echo " - Monitor sleep disabled"

#
# Done!
#
echo
echo "Setup complete. Please reboot for all changes to take effect!"
echo
