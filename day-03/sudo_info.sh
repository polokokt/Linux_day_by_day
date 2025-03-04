#!/bin/bash

echo "This is general information about sudo command, according to the document:\n https://www.reddit.com/r/linuxupskillchallenge/comments/1ihwjv1/day_3_power_trip/"

echo -e "\nTo add user to the sudowers group:"
echo "adduser snori74"
echo "usermod -a -G sudo snori74\n\n"

echo -e "\ncat file with hashed passwords (without sudo): cat /etc/shadow"
cat /etc/shadow

echo -e "\ncat file with hashed passwords (without sudo): sudo cat /etc/shadow"
sudo cat /etc/shadow
echo -e "\n\nprint login history by the user: last root"
last root
echo -e "\nPrint short history of the last sudo usage: sudo journalctl -e /usr/bin/sudo"
sudo journalctl -e /usr/bin/sudo
echo -e "\nBoth sudo -i and sudo -s are commands that allow a user to obtain root privileges on a Unix-based system."
echo -e "sudo -i stands for "sudo interactive" and it launches a new login shell for the root user. "
echo -e "sudo -s stands for "sudo shell" and it launches a new shell for the root user, but it does not create a new login shell. "

echo -e "\nSetting hostname (recommended way):"
echo -e "sudo hostnamectl set-hostname mylittlecloudbox"

echo -e "For a cloud server, you might find that the hostname changes after a reboot.\n To prevent this, edit /etc/cloud/cloud.cfg and change the "preserve_hostname" line to read: "
echo -e "preserve_hostname: true"

echo -e"\nCurrent time settings: timedatectl" 
timedatectl
echo -e"\nList of available timezones: timedatectl list-timezones"
timedatectl list-timezones
echo -e "\nChanging timezone: sudo timedatectl set-timezone Australia/Sydney"

