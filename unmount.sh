#Found in https://grimhacker.com/2016/01/22/using-bitlocker-to-go-on-fedora-23-dislocker/
#Run as SU    
#Run fdisk -l and find out what driver you want to unmount. Ex: sdd/sdc/sdb ...
cd /mnt
umount /mnt/dislocker
umount /mnt/dislocker-container
udisksctl power-off -b /dev/<Selected Hard Drive>
