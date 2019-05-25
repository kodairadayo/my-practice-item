#!/bin/bash -ex

yum -y update

# timezone
timedatectl set-timezone Asia/Tokyo

# firewalld
systemctl stop firewalld
systemctl disable firewalld
systemctl mask firewalld

yum -y install wget git ImageMagick ImageMagick-devel
