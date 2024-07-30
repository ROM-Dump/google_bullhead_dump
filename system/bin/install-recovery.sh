#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:16573674:5e7c3213929b2c2ce85ecc40a3e3cccdd18cd811; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12350694:aedd962a4b65799afaeee4ca41df164e6c46ba79 EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery 5e7c3213929b2c2ce85ecc40a3e3cccdd18cd811 16573674 aedd962a4b65799afaeee4ca41df164e6c46ba79:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
