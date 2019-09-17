# 关于 ProxyAdminFree
ProxyAdminFree 是强大的代理服务工具 [snail007/goproxy](https://github.com/snail007/goproxy) 的控制面板，运行了它，一秒让你的服务器变为强大的代理服务器，友好的交互界面，让你用起来得心应手，心情舒畅。

<hr>

[English](/README_ZH.md)

[snail007/goproxy manual](https://snail007.github.io/goproxy/manual/#/)

## 加入我们

欢迎加官方群交流，QQ群：`42805407` [电报群](https://t.me/snail007_goproxy)

## 预览

### HTTP(S)代理
![](/res/images/http_cn.gif)

### Socks5代理
![](/res/images/socks5_cn.gif)

### 内网穿透
![](/res/images/nat_cn.gif)

### 远程桌面-VNC & Web-SSH
![](/res/images/rdp.gif)

### 自定义服务
![](/res/images/diy_cn.gif)

### 全功能演示
![](/res/images/demo_cn.gif)

## 开始使用

### 下载

选择适合你的系统的文件并下载，[点击进入下载](https://github.com/snail007/proxy_admin_free/releases)

### Linux && MacOS

root账号执行：

`cd 进入“有proxy-admin-free的目录”`

`proxy-admin-free install`


### Windows

1. 使用助手工具安装

管理员打开 goproxy_helper.exe，可以一键安装/卸载/重启服务。

![](/res/images/gh.png)

2. 命令行安装

管理员账号执行cmd.exe

`cd 进入“有proxy-admin-free的目录”`

`proxy-admin-free.exe install`

### 访问

安装成功后，打开浏览器访问：http://127.0.0.1:32080 , 首次默认账号是root，密码是123，登录后记得第一时间修改。

配置文件路径：

Linux && MacOS 位于 /etc/gpfa/app.toml

Windows 位于 C:\gpfa\app.toml

可以配置监听的端口和日志记录。

## 卸载服务

### Linux && MacOS

root账号执行：

`cd 进入“有proxy-admin-free的目录”`

`proxy-admin-free uninstall`


### Windows

管理员账号执行cmd.exe

`cd 进入“有proxy-admin-free的目录”`

`proxy-admin-free.exe uninstall`

## 服务管理

下面的操作必须是已经安装了服务才能使用。

管理服务有两种方式：

1.使用程序 proxy-admin-free 可以管理服务。

proxy-admin-free install    安装为系统服务

proxy-admin-free uninstall  卸载服务

proxy-admin-free start      启动服务

proxy-admin-free stop       停止服务

proxy-admin-free restart    重启服务

2.使用系统服务管理工具管理。

proxy-admin-free 系统服务名称是：ProxyAdminFree

Linux下面可以通过systemctl管理。

MacOS下面可以通过命令管理。

Windows下面可以使用系统的服务管理器管理。

## 鸣谢

[笔下光年](https://gitee.com/yinqi) 提供的后台模板给我们带来舒畅的交互体验.

[gogf](https://github.com/gogf/gf) 提供的方便强大的框架让控制面板开发起来更加流畅自如。
