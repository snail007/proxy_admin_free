# About ProxyAdminFree
ProxyAdminFree is a powerful web console of [snail007/goproxy](https://github.com/snail007/goproxy) .

<hr>

[中文简介](/README_ZH.md)

[snail007/goproxy 手册](https://snail007.github.io/goproxy/manual/zh)

## Preview

### HTTP(S) Proxies
![](/res/images/http_en.gif)

### Socks5 Proxies
![](/res/images/socks5_en.gif)

### Internal NAT
![](/res/images/nat_en.gif)

### Remote Desktop - VNC & Web-SSH
![](/res/images/rdp.gif)

### DIY Service
![](/res/images/diy_en.gif)

### Full Demo
![](/res/images/demo_cn.gif)

## Start Using

### Download

Select the file that is appropriate for your system and download it, [click to download](https://github.com/snail007/proxy_admin_free/releases)

### Linux && MacOS

The root account is executed:

`cd Enter "proxy-admin-free directory".

`proxy-admin-free install`


### Windows

1. Install using the assistant tool

The administrator opens goproxy_helper.exe and can install/uninstall/restart the service with one click.

![](/res/images/gh.png)

2. Command line installation

The administrator account executes cmd.exe

`cd Enter "proxy-admin-free directory".

`proxy-admin-free.exe install`

### access

After the installation is successful, open the browser to access: http://127.0.0.1:32080, the first default account is root, the password is 123, remember to modify the first time after login.

Configuration file path:

Linux && MacOS is located in /etc/gpfa/app.toml

Windows is located at C:\gpfa\app.toml

You can configure the listening port and logging.

## Uninstalling services

### Linux && MacOS

The root account is executed:

`cd Enter "proxy-admin-free directory".

`proxy-admin-free uninstall`


### Windows

The administrator account executes cmd.exe

`cd Enter "proxy-admin-free directory".

`proxy-admin-free.exe uninstall`

## Service Management

The following operations must be done before the service is installed.

There are two ways to manage services:

1. Use the program proxy-admin-free to manage the service.

Proxy-admin-free install install as system service

Proxy-admin-free uninstall uninstall service

Proxy-admin-free start

Proxy-admin-free stop

Proxy-admin-free restart

2. Manage using system service management tools.

The proxy-admin-free system service name is: ProxyAdminFree

Linux can be managed by systemctl.

MacOS can be managed by commands below.

Windows can be managed using the system's Service Manager.

## Thanks

[Back to the light] (https://gitee.com/yinqi) The back-end template provided us a comfortable interactive experience.

[gogf] (https://github.com/gogf/gf) provides a convenient and powerful framework to make the agent backstage development more fluent.