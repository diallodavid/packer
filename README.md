# Packer templates
This repository contains Packer templates that can be used to create Vagrant boxes for Virtualbox. 

## Current Boxes
- [Debian 9 "Stretch"](https://cdimage.debian.org/mirror/cdimage/release/9.6.0/amd64/iso-cd/)
- [Ubuntu Server 18.04.1 LTS](http://cdimage.ubuntu.com/ubuntu/releases/bionic/release/) 
- [Windows 10 Entreprise Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise) box based on Evaluation copies of Windows which will expire after 90 days. Please be sure to consult and comply with Microsoft's licensing agreements.
- [Windows Server 2016 Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2016) box based on Evaluation copies of Windows which will expire after 180 days. Please be sure to consult and comply with Microsoft's licensing agreements.

## Prerequisites
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Install [Packer](https://www.packer.io/downloads.html).
3. Ensure both tools are on your *PATH*.

## Building a box
```
$ packer build debian9.6.json
$ packer build ubuntu18.04-server.json
$ packer build windows10_64.json
$ packer build windows2016.json
```

## Task lists
- [x] Debian 9 box
- [ ] Ubuntu 18.04 Desktop box
- [ ] Vagrant boxes for QEMU
