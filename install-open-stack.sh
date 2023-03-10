#!/bin/bash


Steps for Installing Open Stack PackStack on Centos


sudo setenforce 0
sudo systemctl disable firewalld
sudo systemctl stop firewalld
sudo systemctl disable NetworkManager
sudo systemctl stop NetworkManager


yum autoremove epel-release
yum autoremove openstack-packstack
yum clean all

yum search centos-release-openstack

yum install -y centos-release-openstack-stein.noarch
yum update -y
yum install -y openstack-packstack
packstack --allinone

#Find the password for admin account:

cat keystonerc_admin
