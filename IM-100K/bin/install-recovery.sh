#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15975690:e97c67eb7abbca289ad8954dc71b2a6ad5ebb230; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15463686:95dac136c33b3a3a9f5b815f3fdfd9e2dbbb4f29 EMMC:/dev/block/bootdevice/by-name/recovery e97c67eb7abbca289ad8954dc71b2a6ad5ebb230 15975690 95dac136c33b3a3a9f5b815f3fdfd9e2dbbb4f29:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
