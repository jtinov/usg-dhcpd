# usg-dhcpd
Replace the original dhcpd3 4.1-ESV-R8 with new static build version 4.4.2.
Edgerouter 2.0.9 with dhcpd3 4.1-ESV-R15-P1 is not really a new version either.

The patches were taken from the edgeos-vyatta-dhcp source code.
Currently tested on USG-XG-8.

## Building the binaries
```
$ wget  https://buildroot.org/downloads/buildroot-2020.11.1.tar.gz
$ tar -xvzf buildroot-2020.11.1.tar.gz
$ cd buildroot-2020.11.1
$ wget https://raw.githubusercontent.com/jtinov/usg-dhcpd/main/.config
$ cd package/dhcp
$ wget https://raw.githubusercontent.com/jtinov/usg-dhcpd/main/0002-vyatta-db.patch
$ wget https://raw.githubusercontent.com/jtinov/usg-dhcpd/main/0003-vyatta-server.patch
$ cd ../..
$ make
```


