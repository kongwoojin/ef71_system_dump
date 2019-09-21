
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH


mkdir /data/md5

touch /data/md5/aboot
touch /data/md5/boot
touch /data/md5/recovery
touch /data/md5/rpm
touch /data/md5/sbl1
touch /data/md5/tz
touch /data/md5/sdi

chmod 664  /data/md5/aboot
chmod 664  /data/md5/boot
chmod 664  /data/md5/recovery
chmod 664  /data/md5/rpm
chmod 664  /data/md5/sbl1
chmod 664  /data/md5/tz
chmod 664  /data/md5/sdi

#ln -s /data/md5/aboot /system/etc/aboot
#ln -s /data/md5/boot /system/etc/boot
#ln -s /data/md5/recovery /system/etc/recovery
#ln -s /data/md5/rpm /system/etc/rpm
#ln -s /data/md5/sbl1 /system/etc/sbl1
#ln -s /data/md5/tz /system/etc/tz
#ln -s /data/md5/sdi /system/etc/sdi

#model_name=`getprop ro.build.product`
#case $model_name in
#ef56* | ef59* | ef60* | ef61* | ef62* | EF56* | EF59* | EF60* | EF61* | EF62* | EF63*)
#	/system/bin/restorecon -r /system
#	;;
#*)
#	;;
#esac

sync
