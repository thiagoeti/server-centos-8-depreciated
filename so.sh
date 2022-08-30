#!/bin/sh

# update / upgrade #

yum -y update ; yum -y upgrade ;

# memory

swapoff -a

free -m

# clean

yum clean all
yum clean metadata

# list

yum list "*"

#
