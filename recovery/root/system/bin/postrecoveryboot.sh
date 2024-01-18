#!/system/bin/sh

umount /system_root
umount /system
umount /system_ext
umount /product 
umount /vendor

mount -o rw /system_root
mount -o rw /system
mount -o rw /system_ext
mount -o rw /product 
mount -o rw /vendor 

/bin/blockdev --setrw /dev/block/mapper/system_root
/bin/blockdev --setrw /dev/block/mapper/system
/bin/blockdev --setrw /dev/block/mapper/system_ext
/bin/blockdev --setrw /dev/block/mapper/product
/bin/blockdev --setrw /dev/block/mapper/vendor	

