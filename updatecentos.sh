#!/usr/bin/bash

# this script updates your centOs machine:
# source ~/updatecentos.sh

# created by Matej Scibravy on 6 Sep 2019
# Version: 1.0
# last edited on 24 Nov 2019

#cat /etc/centos-release
#cat /etc/redhat-release

sudo yum clean all -y
sudo yum repolist enabled
sudo yum makecache
sudo yum check-update
sudo yum distro-sync full -y # careful - this also makes downgrades
sudo yum update -y
sudo yum upgrade -y
sudo yum autoremove -y

#cat /etc/centos-release
#cat /etc/redhat-release
