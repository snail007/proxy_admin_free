# 关于 ProxyAdmin
ProxyAdmin 是强大的代理服务工具 [snail007/goproxy](https://github.com/snail007/goproxy) 的控制面板，运行了它，一秒让你的服务器变为强大的代理服务器，友好的交互界面，小白也能轻松上手，让你用起来得心应手，心情舒畅。

<hr>

[English](/README_ZH.md)

[snail007/goproxy 手册](https://snail007.github.io/goproxy/manual/zh)

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

### 客户端连接参数
![](/res/images/client_args.gif)

### 实时日志
![](/res/images/logging.gif)

### 调试模式
![](/res/images/debugging.gif)

### 全功能演示
![](/res/images/demo_cn.gif)

## 开始使用

### 视频安装教程

[点击观看安装视频](https://space.bilibili.com/472844633/channel/detail?cid=88254)

### 快速安装

如果你的VPS是 linux 64位的系统，那么只需要执行下面一句，就可以完成自动安装和配置.

提示:所有操作需要root权限。 

```shell  
curl -L https://raw.githubusercontent.com/snail007/proxy_admin_free/master/install_auto.sh | bash  
```  

安装完成，配置目录是/etc/gpa，更详细的使用方法请参考上面的手册目录，进一步了解你想要使用的功能。 
 
如果安装失败或者你的vps不是linux64位系统，请按照下面的手动安装步骤安装。 
  
### 手动安装  

选择适合你的系统的文件并下载，[点击进入下载](https://github.com/snail007/proxy_admin_free/releases)

如果上面不能正常下载，点击这里[镜像下载](https://www.host900.com/snail007/proxy_admin_free/)

### Linux && MacOS

root账号执行：

`cd 进入“有proxy-admin的目录”`

`proxy-admin install`


### Windows

1. 使用助手工具安装

管理员打开 goproxy_helper.exe，可以一键安装/卸载/重启服务。

![](/res/images/gh.png)

2. 命令行安装

管理员账号执行cmd.exe

`cd 进入“有proxy-admin的目录”`

`proxy-admin.exe install`

### 访问

安装成功后，打开浏览器访问：http://127.0.0.1:32080 , 首次默认账号是root，密码是123，登录后记得第一时间修改。

配置文件路径：

Linux && MacOS 位于 /etc/gpa/app.toml

Windows 位于 C:\gpa\app.toml

可以配置监听的端口和日志记录。

## 卸载服务

### Linux && MacOS

root账号执行：

`cd 进入“有proxy-admin的目录”`

`proxy-admin uninstall`


### Windows

管理员账号执行cmd.exe

`cd 进入“有proxy-admin的目录”`

`proxy-admin.exe uninstall`

## 服务管理

下面的操作必须是已经安装了服务才能使用。

管理服务有两种方式：

1.使用程序 proxy-admin 可以管理服务。

proxy-admin install    安装为系统服务

proxy-admin uninstall  卸载服务

proxy-admin start      启动服务

proxy-admin stop       停止服务

proxy-admin restart    重启服务

2.使用系统服务管理工具管理。

proxy-admin 系统服务名称是：proxyadmin

Linux下面可以通过systemctl管理。

MacOS下面可以通过命令管理。

Windows下面可以使用系统的服务管理器管理。

## 鸣谢

[笔下光年](https://gitee.com/yinqi) 提供的后台模板给我们带来舒畅的交互体验.

[GoFrame](https://github.com/gogf/gf) 提供的方便强大的框架让控制面板开发起来更加流畅自如。
