#!/bin/bash

cd /lib/firmware/ath10k/QCA9377/hw1.0/
sudo mv firmware-5.bin firmware-5.bin.orig
sudo mv firmware-6.bin firmware-6.bin.orig
sudo wget "https://github.com/kvalo/ath10k-firmware/blob/master/QCA9377/hw1.0/CNSS.TF.1.0/firmware-5.bin_CNSS.TF.1.0-00267-QCATFSWPZ-1?raw=true" -O firmware-5.bin
cd ../../../../../

sudo modprobe -r ath10k_pci
sudo modprobe ath10k_pci
sudo dmesg | grep ath10k

echo "Done"
