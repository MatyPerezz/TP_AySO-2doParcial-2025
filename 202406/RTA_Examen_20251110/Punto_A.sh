#!/bin/bash
sudo fdisk -l
sudo fdisk /dev/sdb <<EOF
n
p
1


t
8e
w
EOF
sudo fdisk /dev/sdc <<EOF
n
p
1

+512M
t
1
82
n
p
2


t
2
8e
w
EOF
sudo fdisk -l /dev/sdb /dev/sdc
sudo wipefs -a /dev/sdb1 /dev/sdc2
sudo pvcreate /dev/sdb1 /dev/sdc3
sudo pvcreate /dev/sdb1 /dev/sdc2
sudo pvs
sudo vgcreate vg_datos /dev/sdb1 /dev/sdc2
sudo vgs
sudo lvcreate -n lv_docker -L 5M vgd_datos
sudo lvcreate -n lv_docker -L 5M vg_datos
sudo lvcreate -n lv_workareas -L 1.5G vg_datos
sudo lvcreate -n lv_swap -L 512M vg_datos
sudo lvs
mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_datos/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_datos/lv_swap
df -h
free -h
swapon --show

