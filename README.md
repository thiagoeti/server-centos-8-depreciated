# Server - Centos 8

Step by step how to build a server using Centos.

### System Operating

Update the operating system.

```console
yum -y update ; yum -y upgrade ;
```

Turn off Swap memory.

```console
swapoff -a
```

> You can also run the file ```so.sh```

### Package Management

Tools for manipulating repositories and extended package management.

```console
yum install -y yum-utils
```

Additional packages for Enterprise Linux.

```console
yum install -y epel-release
```

Development tools and libraries.

```console
yum groups mark install -y "Development Tools"
yum groups mark install -y "Development Libraries"

yum groupinstall -y "Development Tools"
```

> You can also run the file ```package.sh```

### Tools and Libraries

##### sshpass

Access remote server SSH passing the password in command line parameter.

```console
yum install -y sshpass
```

##### iptables

Tool of firewall for filter and config rules interface of network.

```console
yum install -y iptables
yum install -y iptables-service
```

##### htop

Visual and interactive tool to visualize processes and resources on unix systems.

```console
yum install -y htop
```

##### wget

Tool to download files using command line in console.

```console
yum install -y wget
```

##### curl

Client URL - tool to sending and downloading data in various protorols.

```console
yum install -y curl
```

##### git

Git is a version control system.

```console
yum install -y git
```

##### jq

JSON data - tool for slice and filter and map and transform structured data with ease.

```console
yum install -y jq
```

##### sendmail

Resource to routing of email that support many methods types of transfer and send of emails.

```console
yum install -y sendmail
```

##### zip unzip

Tool to compress and uncompress files and directories.

```console
yum install -y zip unzip
```

> You can also run the file ```tool.sh```

### Packages and Languages

##### Make

Package build-essential.

```console
yum install -y make
```

##### Language C

Library for general build.

yum install -y gcc
yum install -y gcc-c++

##### Python

It can serves as a tool for creating routines.

```console
yum install -y python39
python3.9 --version
```

##### PHP

It can serves as a tool for creating routines.

```console
yum install -y php
php --version
```

##### NodeJS

It can serves as a tool for creating routines.

```console
# repository
curl -sL https://rpm.nodesource.com/setup_16.x | bash -

# install
yum install -y nodejs
yum install -y npm

# link - compatible all apps
ln -s /usr/bin/node /usr/bin/nodejs
ln -s /usr/bin/nodejs /usr/bin/node

# version
nodejs -v
npm -v
```

> You can also run the file ```language.sh```

### Time

The chrony package provides a service daemon that enable systems to update their clock.

```console
# localtime
rm -fv /etc/localtime
ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# install
yum install -y chrony

# date
date
```

> You can also run the file ```chrony.sh```
