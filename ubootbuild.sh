#! /bin/bash
TPWD=$(pwd)
echo $TPWD
cd $TPWD/rootfs/build/uboot-f5a8214593
make ARCH=arm  CROSS_COMPILE=$TPWD/rootfs/host/bin/arm-buildroot-linux-uclibcgnueabihf- $1
cp u-boot u-boot.bin u-boot.img $TPWD/rootfs/images
cp $TPWD/rootfs/build/linux-custom/arch/arm/boot/uImage $TPWD/rootfs/images
cp $TPWD/rootfs/build/linux-custom/arch/arm/boot/uImage.vexpress-v2p-ca9 $TPWD/rootfs/images
cp $TPWD/rootfs/build/linux-custom/arch/arm/boot/dts/vexpress-v2p-ca9.dtb $TPWD/rootfs/images
cp $TPWD/rootfs/images/uImage $TPWD/rootfs/images/uImage.vexpress-v2p-ca9 $TPWD/rootfs/images/vexpress-v2p-ca9.dtb $TPWD/../../tftp
