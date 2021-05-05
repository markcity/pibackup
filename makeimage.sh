today=$(date +"%Y-%m-%d")
sudo mkdir /media/usb
sudo chown -R pi:pi /media/usb
sudo mount /dev/sda1 /media/usb -o uid=pi,gid=pi
sudo apt-get install ntfs-3g
sudo dd if=/dev/mmcblk0 of=/media/usb/pi_img_${today}.img bs=1M
sudo umount /dev/sda1