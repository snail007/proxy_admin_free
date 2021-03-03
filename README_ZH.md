# 关于 ProxyAdmin
ProxyAdmin 是强大的代理服务工具 [snail007/goproxy](https://github.com/snail007/goproxy) 的控制面板，运行了它，一秒让你的服务器变为强大的代理服务器，友好的交互界面，小白也能轻松上手，让你用起来得心应手，心情舒畅。

<hr>

[Manual](https://snail.gitee.io/proxy/manual/) ｜ [参考手册](https://snail.gitee.io/proxy/manual/zh/)

手册同时适用于命令行goproxy和proxyadmin面板，控制面板只是命令行goproxy的界面化，使用参数完全一样。

## 加入我们

欢迎加官方群交流，QQ群：`42805407` [电报群](https://t.me/snail007_goproxy)

## 预览

### HTTP(S)代理
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/http_cn.gif)

### Socks5代理
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/socks5_cn.gif)

### 内网穿透
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/nat_cn.gif)

### 远程桌面-VNC & Web-SSH
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/rdp.gif)

### 自定义服务
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/diy_cn.gif)

### 客户端连接参数
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/client_args.gif)

### 实时日志
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/logging.gif)

### 调试模式
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/debugging.gif)

### 全功能演示
![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/demo_cn.gif)

## 开始使用

### 视频安装教程

[点击观看安装视频](https://space.bilibili.com/472844633/channel/detail?cid=88254)

### 快速安装

如果你的VPS是 linux 64位的系统，那么只需要执行下面一句，就可以完成自动安装和配置.

提示:所有操作需要root权限。 

##### 免费版执行这个哟:

```shell  
curl -L https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/install_auto.sh | bash  
```  

##### VIP版执行这个:

```shell  
curl -L https://mirrors.host900.com/https://github.com/snail007/proxy-admin-vip/blob/master/install_auto.sh | bash  
```  
 
安装完成，配置目录是/etc/gpa，更详细的使用方法请参考上面的手册目录，进一步了解你想要使用的功能。 

如果安装失败或者你的vps不是linux64位系统，请按照下面的手动安装步骤安装。 
  
### 手动安装  

#### 免费版下载

选择适合你的系统的文件并下载，[点击进入下载](https://github.com/snail007/proxy_admin_free/releases)
 
#### VIP版本下载

选择适合你的系统的文件并下载，[点击进入下载](https://github.com/snail007/proxy-admin-vip/releases)
 
### Linux && MacOS

root账号执行：

`cd 进入“有proxy-admin的目录”`

`./proxy-admin install`


### Windows

1. 使用助手工具安装

管理员打开 goproxy_helper.exe，可以一键安装/卸载/重启服务。

![](https://mirrors.host900.com/https://github.com/snail007/proxy_admin_free/blob/master/res/images/gh.png)

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

`./proxy-admin uninstall`


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

## HTTP接口操作面板数据
此功能只适用于VIP控制面板，控制面板对登录模式默认是验证码登录模式，还可以在配置文件开启token模式，这样登录可以同时支持验证码和token模式，利用token模式，你可以轻松模拟登录面板，然后你的程序通过http就能像在面板一样操作数据，还能实现后台没有的功能哟，比如批量导入，启动，停止等操作。

开启token模式步骤

1.修改控制面板配置文件app.toml,[login]下面的
```ini
enable_token=true
token="xxx"
```
提醒：`xxx`是具体的token，应该设置为一个私密的英文数字字符串，长度不限制，建议32个左右。

2.请求登录接口的时候  
1. 需要设置一个HTTP头部：`X-Requested-With: XMLHttpRequest`，这样才能正常登录。
2. 登录表单数据除了用户名和密码，还要一个token字段，值是配置文件里面[login]设置的token。

3.要操面板的某个功能的数据，请自行使用Chrome浏览器开启开发者工具，观察面板操作的对应接口，请求表单数据字段情况。


## 鸣谢

[笔下光年](https://gitee.com/yinqi) 提供的后台模板给我们带来舒畅的交互体验.

[GoFrame](https://github.com/gogf/gf) 提供的方便强大的框架让控制面板开发起来更加流畅自如。
