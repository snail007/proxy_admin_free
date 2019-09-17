#!/bin/bash
F="proxy-admin-free_linux-amd64.tar.gz"

set -e
if [ -e /tmp/proxy ]; then
    rm -rf /tmp/proxy
fi
mkdir /tmp/proxy
cd /tmp/proxy
LAST_VERSION=$(curl --silent "https://api.github.com/repos/snail007/proxy_admin_free/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
wget "https://github.com/snail007/proxy_admin_free/releases/download/${LAST_VERSION}/$F"

# #install proxy
tar zxvf $F
rm /usr/bin/proxy-admin-free
chmod +x proxy-admin-free
mv proxy-admin-free /usr/bin/
/usr/bin/proxy-admin-free uninstall
/usr/bin/proxy-admin-free install
rm $F

systemctl  status ProxyAdminFree

echo "install done, please visit : http://YOUR_IP:32080/"