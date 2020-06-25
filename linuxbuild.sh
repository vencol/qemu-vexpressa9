#! /bin/bash
TPWD=$(pwd)
echo $TPWD
cd $TPWD/rootfs/build/linux-custom
#make ARCH=arm  CROSS_COMPILE=$TPWD/rootfs/host/bin/arm-buildroot-linux-uclibcgnueabihf- $1
#cp u-boot u-boot.bin u-boot.img $TPWD/rootfs/images
#cp $TPWD/rootfs/images/uImage.vexpress-v2p-ca9 $TPWD/rootfs/images/vexpress-v2p-ca9.dtb $TPWD/../../tftp
BR_BINARIES_DIR=/home/vencol/code/vexpressa9/rootfs/images KCFLAGS=-Wno-attribute-alias PKG_CONFIG_PATH="" /usr/bin/make -j3 -C /home/vencol/code/vexpressa9/rootfs/build/linux-custom HOSTCC=/usr/bin/gcc HOSTCC="/usr/bin/gcc -O2 -I/home/vencol/code/vexpressa9/rootfs/host/include -L/home/vencol/code/vexpressa9/rootfs/host/lib -Wl,-rpath,/home/vencol/code/vexpressa9/rootfs/host/lib" ARCH=arm INSTALL_MOD_PATH=/home/vencol/code/vexpressa9/rootfs/target CROSS_COMPILE="/home/vencol/code/vexpressa9/rootfs/host/bin/arm-buildroot-linux-uclibcgnueabihf-" DEPMOD=/home/vencol/code/vexpressa9/rootfs/host/sbin/depmod LOADADDR="0x60003000" INSTALL_MOD_STRIP=1 HOSTCC="/usr/bin/gcc" $1
