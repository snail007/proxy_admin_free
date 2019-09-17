#!/bin/bash
F="proxy-admin-free_linux-amd64.tar.gz"

set -e
if [ -e /etc/gpaf ]; then
    rm -rf /etc/gpaf
fi
mkdir /etc/gpaf
cd /etc/gpaf
LAST_VERSION=$(curl --silent "https://api.github.com/repos/snail007/proxy_admin_free/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
wget "https://github.com/snail007/proxy_admin_free/releases/download/${LAST_VERSION}/$F"

# #install proxy
tar zxvf $F
chmod +x proxy-admin-free
./proxy-admin-free uninstall
./proxy-admin-free install
rm $F
systemctl  status ProxyAdminFree
echo "install done, please visit : http://YOUR_IP:32080/"
