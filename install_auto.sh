#!/bin/bash
F="proxy-admin_linux-amd64.tar.gz"
set -e
if [ -e /tmp/proxy ]; then
    rm -rf /tmp/proxy
fi
mkdir /tmp/proxy
cd /tmp/proxy
echo -e "\n>>> downloading ... $F\n"
set +e
CN=$(wget -O - -t 3 --dns-timeout 1 --connect-timeout 2 --read-timeout 2 myip.ipip.net)
if [ "$CN" != "" ];then
CN=$(echo $CN| grep "中国" |grep -v grep)
fi
set -e
manual=""
if [ -z "$CN" ];then
manual="https://snail007.github.io/goproxy/manual/"
LAST_VERSION=$(curl --silent "https://api.github.com/repos/snail007/proxy_admin_free/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
wget  -t 1 "https://github.com/snail007/proxy_admin_free/releases/download/${LAST_VERSION}/$F"
else
manual="https://snail.gitee.io/proxy/manual/zh/"
wget  -t 1 "https://mirrors.host900.com/snail007/proxy_admin_free/$F"
fi
echo -e ">>> installing ... \n"
#install proxy-admin
tar zxvf $F >/dev/null 2>&1 
chmod +x proxy-admin
set +e
./proxy-admin uninstall >/dev/null 2>&1 
set -e
./proxy-admin install
./proxy-admin start
rm $F
set +e
systemctl status proxyadmin &
set -e
sleep 2
echo  -e "\n>>> install done, thanks for using snail007/proxy-admin\n"
echo  -e ">>> install path /usr/local/bin/proxy-admin\n"
echo  -e ">>> configuration path /etc/gpa\n"
echo  -e ">>> uninstall just exec : proxy-admin uninstall\n"
echo  -e ">>> please visit : http://YOUR_IP:32080/ username: root, password: 123\n"
echo  -e ">>> How to using? Please visit : $manual\n"