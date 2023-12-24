

```shell
$ virsh -c qemu+ssh://cees@192.168.129.64/system domifaddr --domain deb01 --interface ens3 --source agent
 Naam       MAC adres            Protocol     Address
-------------------------------------------------------------------------------
 ens3       52:54:00:f2:7a:46    ipv4         192.168.129.234/24
 -          -                    ipv6         fe80::5054:ff:fef2:7a46/64

```