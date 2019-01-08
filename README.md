# Packer templates
This repository contains Packer templates that can be used to create Vagrant boxes for Virtualbox. 

## Current Boxes
- [Debian 9 "Stretch"](https://cdimage.debian.org/mirror/cdimage/release/9.6.0/amd64/iso-cd/)
- [Ubuntu Desktop 18.04.1 LTS](http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/) 
- [Ubuntu Server 18.04.1 LTS](http://cdimage.ubuntu.com/ubuntu/releases/bionic/release/) 
- [Windows 10 Entreprise Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise) box based on Evaluation copies of Windows which will expire after 90 days. Please be sure to consult and comply with Microsoft's licensing agreements.
- [Windows Server 2016 Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2016) box based on Evaluation copies of Windows which will expire after 180 days. Please be sure to consult and comply with Microsoft's licensing agreements.

## Prerequisites
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Install [Packer](https://www.packer.io/downloads.html).
3. Ensure both tools are on your *PATH*.

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
$ packer build windows10_64.json
```
To build Windows Server 2016 Entreprise Vagrant box for VirtualBox
```
$ packer build windows2016.json
```

## Task lists
- [x] Ubuntu 18.04 Desktop box
- [ ] Vagrant boxes for QEMU
