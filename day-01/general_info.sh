#!/bin/bash

echo -e "This is script to print out the basic information about the system\n"
echo "Linux distribution and version (lsb_release or cat /etc/os-release):"
lsb_release
cat /etc/os-release

echo -e "\n\nSystem information (uname -a):"
uname -a

echo -e "\n\nSystem uptime (with uptime)"
uptime
echo -e "\n\nSystem uptime (with cat /proc/uptime)"
cat /proc/uptime

echo -e "\n\n=========Hardware information:========="
echo -e "CPU architecture (lscpu_):"
lscpu
echo -e "\nList block devices (lsblk):"
lsblk
echo -e "\nList PCI devices (lspci):"
lspci
echo -e "\nList USB devices(lsusb):"
lsusb

echo -e "\n\n=========Memory and CPU usage:========="
echo -e "\nDisk space usage (df -h):"
df -h
echo -e "\nEstimate the size of your folders (du -h):"
du -h

echo -e "\n\n=========Network usage:========="
echo -e "\nGeneral networ interfaces (ifconfig):"
ifconfig
echo -e "\nGeneral networ interfaces (ip address):"
ip address
echo -e "\nBandwith usage static view (netstat -i):"
ip netstat -i
echo -e "\nBandwith usage continuous view (ifstat)(breake after 10 seconds):"
timeout 10 ifstat