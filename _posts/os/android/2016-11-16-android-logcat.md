---
layout: post
title: Logcat查看堆栈信息
subtitle: logcat trace the stack infomation
author: fire
source: http://fireliu.com
categories: android
tags: logcat
---

在真机上调试app的时候，一不小心就闪退（崩溃）了，那么这个时候如何查看堆栈信息呢。

### 1 ###

先连接真机的logcat

```c
adb logcat
```

### 2 ###

操作app到崩溃！！！

### 3 ###

```c
{$ndk-root}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86/bin/arm-linux-androideabi-addr2line -C -f -e {yourlib-path}/yourlib.so {addr}
``` 

**{$ndk-root}** 为你本机的ndk目录，后面的{darwin-x86}如果是64位机器则是{darwin-x86_64}。

**{yourlib-path}** 为你so文件对应的符号库的路径。

**{addr}** 为logcat里面显示出来的地址信息。ps：找到backtrace段以pc开头的地址。

OK，就是这么简单！