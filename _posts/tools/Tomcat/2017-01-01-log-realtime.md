---
layout: post
title: Tomcat控制台实时查看日志
author: fire
categories: tomcat 
tags: 日志
---

在Linux操作系统下，我们常用sh stratrup.sh来启动Tomcat。

你会发现，并没有出现Cosole，就是在Windows下启动时，那个CMD窗口，一些调试信息和Log通常会打印在这里。这个Cosole对于一个开发人员来说，可以说是至关重点，因为有调试信息在里面嘛，没有了这个，根本不知道发生了什么事情，当然你可以查看log，但是不实时。

用tail命令可以实现查看log日志，命令如下：

```
tail -f %tomcat%/logs/catalina.out
```

*%tomcat%是tomcat安装路径。*

tail是查看文件一个命令，-f表示实时去取这个文件，常用于监控日志。
