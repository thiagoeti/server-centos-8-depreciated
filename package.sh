#!/bin/sh

# yum utils

yum install -y yum-utils

# packages

yum install -y epel-release

# repository / development

yum groups mark install -y "Development Tools"
yum groups mark install -y "Development Libraries"

yum groupinstall -y "Development Tools"

#
