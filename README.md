# Packer templates
This repository contains Packer templates that can be used to create Vagrant boxes for Virtualbox. 

## Current Boxes
- [Windows 10 Entreprise Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise) box based on Evaluation copies of Windows which will expire after 90 days. Please be sure to consult and comply with Microsoft's licensing agreements.
- [Windows Server 2016 Evaluation](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2016) box based on Evaluation copies of Windows which will expire after 180 days. Please be sure to consult and comply with Microsoft's licensing agreements.

## Prerequisites
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Install [Packer](https://www.packer.io/downloads.html).
3. Ensure both tools are on your *PATH*.

## Building a box
```
$ packer build windows10_64.json
$ packer build windows2016.json
```

## Task lists
- [ ] Debian 9 box
- [ ] Ubuntu 18.04 box
- [ ] Vagrant boxes for QEMU
