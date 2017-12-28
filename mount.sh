dislocker -v -V /dev/sdd1 -u -- /mnt/dislocker-container
ls /mnt/dislocker-container/dislocker-file
mount -o loop,umask=0,uid=nobody,gid=nobody /mnt/dislocker-container/dislocker-file /mnt/dislocker
