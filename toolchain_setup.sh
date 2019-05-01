#!/bin/sh
TOOLCHAIN_PATH="/opt/merlin-toolchain"
if [ -d $TOOLCHAIN_PATH ] then
	echo "toolchain already exist";
	exit
fi

ARCHIVE_URL="http://downloads.linksys.com/downloads/gpl/EA6700_v1.1.41.183873_GPL.tar.gz"
HND_LOC="publication/src/arm-brcm-linux-uclibcgnueabi/hndtools-arm-linux-2.6.36-uclibc-4.5.3.tar.bz2"
BUILDROOT_LOC="hndtools-arm-linux-2.6.36-uclibc-4.5.3/src/buildroot-2012.02.tar.bz2"
wget "$ARCHIVE_URL" -O /tmp/gpl_archive.tgz
tar -C /tmp -zxvf $HND_LOC
tar -C /opt -jxvf /tmp/$HND_LOC
mv /opt/hndtools-arm-linux-2.6.36-uclibc-4.5.3 $TOOLCHAIN_PATH
