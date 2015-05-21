#!/bin/bash

make -j32
mv arch/arm/boot/zImage ../AIK-Linux/split_img/image-new.img-zImage
cd ../AIK-Linux/
./repackimg.sh
osscmd put image-new.img oss://leoyzen/image-new.img
