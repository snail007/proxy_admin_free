#!/bin/bash
F="proxy-admin-free_linux-amd64.tar.gz"
cd /tmp
rm -rf $F
LAST_VERSION=$(curl --silent "https://api.github.com/repos/snail007/proxy_admin_free/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
wget "https://github.com/snail007/proxy_admin_free/releases/download/${LAST_VERSION}/$F"

# #install
tar zxvf $F
chmod +x proxy-admin-free
./proxy-admin-free uninstall >/dev/null 2>&1 
./proxy-admin-free install
rm $F
systemctl  status ProxyAdminFree &
sleep 1
echo "install done, please visit : http://YOUR_IP:32080/"
