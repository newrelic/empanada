Raspberry Pi Setup
==================

This is a quick guide to configuring Raspbian for use with Empanada. You may
need to make minor adjustments depending on your monitor and sound setup.


HDMI Display
------------
For use with the ViewSonic VX2703mh-LED monitor, we found the following
changes had the best visual results. See system/config.txt for a reference.

# Edit /boot/config.txt
  # For the best resolution we added:
    hdmi_mode=16
  # For sound out of the monitor we added:
    hdmi_drive=2


Disable Screen-blanking
-----------------------
The display turns off automatically to conserve power, but that does not
make for a very useful Information Radiator. To disable X from blanking
the screen make the following changes. See system/lightdm.conf for a
reference.

# Edit /etc/lightdm/lightdm.conf
  # Change the configuration as follows:
    [SeatDefaults]
    xserver-command=X -s 0 -dpms

