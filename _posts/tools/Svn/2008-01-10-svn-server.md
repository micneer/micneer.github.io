---
layout: post
title: 开机自动启动SVN服务的方法
categories: tools 
tags: SVN
---

![title](https://sideproject.cn/images/title/title_013.jpg){:class="image-title"}

**CentOS**开机自动启动SVN服务的方法

我们在用终端操作的时候，可以直接使用以下命令启动SVN

```bash
svnserve -d -r /home/svn
```

但是在/etc/rc.d/rc.local 文件中必须写上完整的路径

使用 whereis 命令查找一下svnserve命令的路径：

编辑rc.local文件 

```bash
vi /etc/rc.d/rc.local
```

添加如下启动命令 

```bash
/usr/bin/svnserve -d -r /home/svn
```

在centos7中，/etc/rc.d/rc.local的权限被降低了，所以需要执行如下命令赋予其可执行权限

```bash
chmod +x /etc/rc.d/rc.local
```