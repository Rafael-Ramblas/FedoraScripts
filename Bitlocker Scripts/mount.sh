#FOUND IN https://grimhacker.com/2016/01/22/using-bitlocker-to-go-on-fedora-23-dislocker/
#RUN AS SU
#Install dislocker
#Run fdisk -l and find the partition that you want to mount. Ex: sdd1, sdc2, sdb1, ...
#Run mkdir /mnt/dislocker-container and mkdir /mnt/dislocker
#For me is the following script
dislocker -v -V /dev/sdd1 -u -- /mnt/dislocker-container
ls /mnt/dislocker-container/dislocker-file
mount -o loop,umask=0,uid=nobody,gid=nobody /mnt/dislocker-container/dislocker-file /mnt/dislocker
