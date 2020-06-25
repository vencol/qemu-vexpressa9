#! /bin/bash
TPWD=$(pwd)
echo $TPWD
cd $TPWD/../buildroot
mkdir -p $TPWD/rootfs
make O=$TPWD/rootfs ARCH=arm $1

