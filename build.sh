#!/bin/bash
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- \
CC=/usr/bin/clang \
CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabi- "
# CC=/data/repos/sdclang-6.0.2/bin/clang \
# CC=/data/repos/linux-x86/clang-r450784e/bin/clang \

make ${args} mrproper
make ${args} apollo_user_defconfig
make ${args}