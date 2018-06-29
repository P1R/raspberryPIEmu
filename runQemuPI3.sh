#!/bin/bash
qemu-system-aarch64 \
-machine none \
-kernel kernel-qemu-4.9.59-stretch \
-cpu cortex-a53 \
-m 1G \
-M versatilepb -dtb versatile-pb.dtb \
-no-reboot \
-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
-net nic -net user,hostfwd=tcp::5022-:22 \
-hda 2017-11-29-raspbian-stretch-lite.img \
