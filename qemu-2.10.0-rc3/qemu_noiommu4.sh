#!/bin/bash
qemu-system-x86_64 -c 19 -w 0000:00:04.3 -- -machine accel=kvm -cpu host -smp sockets=1,cores=1,threads=1 -m 1024M -object memory-backend-file,id=mem,size=1024M,mem-path=/dev/hugepages,share=on -drive file=/var/iso/virtual4.qcow2 -mem-prealloc -numa node,memdev=mem -vnc 0.0.0.0:53 --enable-kvm -chardev socket,id=char4,path=/tmp/sock3,server -netdev type=vhost-user,id=mynet4,chardev=char4,vhostforce -device virtio-net-pci,netdev=mynet4,id=net4,mac=00:00:00:00:00:04
