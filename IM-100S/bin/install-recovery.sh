#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15979786:23eaaeb12239ca28c172d154a3d272f0f41d1209; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15451398:9a3a0c6a91f3145a53eaa74839ad9553f1fc68d7 EMMC:/dev/block/bootdevice/by-name/recovery 23eaaeb12239ca28c172d154a3d272f0f41d1209 15979786 9a3a0c6a91f3145a53eaa74839ad9553f1fc68d7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
