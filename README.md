# Packer templates
This repository contains Packer templates that can be used to create Vagrant boxes for Virtualbox and QEMU.

## Current Boxes
- [Debian 9 "Stretch"](https://cdimage.debian.org/mirror/cdimage/release/9.6.0/amd64/iso-cd/)
- [Ubuntu Desktop 18.04.1 LTS](http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/) 
- [Ubuntu Server 18.04.1 LTS](http://cdimage.ubuntu.com/ubuntu/releases/bionic/release/) 
- [Windows 10 Entreprise Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise) box based on Evaluation copies of Windows which will expire after 90 days. Please be sure to consult and comply with Microsoft's licensing agreements.
- [Windows Server 2016 Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2016) box based on Evaluation copies of Windows which will expire after 180 days. Please be sure to consult and comply with Microsoft's licensing agreements.

## Prerequisites
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [QEMU](https://www.qemu.org/download/).
2. Install [Packer](https://www.packer.io/downloads.html) and ensure _packer_ is on your *PATH*.

## Building a box
To build Debian 9 "Stretch" Vagrant box for VirtualBox
```
$ packer build debian9.6.json
```
To build Ubuntu Desktop 18.04 Vagrant box for VirtualBox
```
$ packer build ubuntu18.04-desktop.json
```
To build Ubuntu Server 18.04 Vagrant box for VirtualBox
```
$ packer build ubuntu18.04-server.json
```
To build Windows 10 Entreprise Vagrant box for VirtualBox
```
$ packer build -only=virtualbox-iso windows10_64.json
```
To build Windows 10 Entreprise Vagrant box for libvirt
```
$ packer build -only=qemu windows10_64.json
```
To build Windows Server 2016 Entreprise Vagrant box for VirtualBox
```
$ packer build -only=virtualbox-iso windows2016.json
```
To build Windows Server 2016 Entreprise Vagrant box for libvirt
```
$ packer build -only=qemu windows2016.json
```
N.B. : Parallel building issue with [QEMU and virtualbox-iso](https://github.com/hashicorp/packer/issues/4863)

## Task lists
- [x] Vagrant boxes for QEMU
- [ ] Build with VirtIO drivers (disk, network card, etc.)
- [ ] Enable sync folder
