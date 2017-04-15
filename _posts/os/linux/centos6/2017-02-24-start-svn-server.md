---
layout: post
title: CentOS6开机自动启动SVN服务的方法
subtitle: Each post also has a subtitle
author: fire
source: http://fireliu.com
categories: linux 
tags: markdown, write
---

centos开机自动启动SVN服务的方法

我们在用终端操作的时候，可以直接使用以下命令启动SVN： 
svnserve -d -r /home/svn

但是在/etc/rc.d/rc.local 文件中必须写上完整的路径

使用 whereis 命令查找一下svnserve命令的路径：

编辑rc.local文件 
vi /etc/rc.d/rc.local

添加如下启动命令 
/usr/bin/svnserve -d -r /home/svn
