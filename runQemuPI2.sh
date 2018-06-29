#!/bin/bash
qemu-system-arm -kernel kernel-qemu-4.9.59-stretch -cpu arm1176 -m 256 -M versatilepb -dtb versatile-pb.dtb -no-reboot -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -net nic -net user,hostfwd=tcp::5022-:22 -hda 2017-11-29-raspbian-stretch-lite.img
