#!/bin/bash
set -eo pipefail

if [ ! -f ./u-boot/rkbin/LICENSE.TXT ]; then
    git submodule update --init --recursive
fi

echo "Note: requires a arm64 cross-compiler."
pushd u-boot
./make.sh odroid_rk3568
popd

cp ./u-boot/uboot.img ./
