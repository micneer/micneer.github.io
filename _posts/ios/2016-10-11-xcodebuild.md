---
layout: post
title: xcodebuild
meta: xcodebuild常用命令
author: fire
categories: ios 
tags: xcode, ios, xcodebuild
---

1. 查看xcode的版本号和build版本

~~~
$ xcodebuild -version
~~~

2. 显示当前系统的SDK及其版本

~~~
$ xcodebuild -showsdks
~~~

3. 显示工程项目信息，先cd到工程目录下（有*.xcodeproj的目录，比如xxx.xcodeproj），然后输入命令

~~~
$ xcodebuild -list
~~~

4. xcodebuild用法：
4.1 用ios5.0模拟器（iphonesimulator5.0）建立工程

~~~
$ xcodebuild -sdk iphonesimulator5.0
~~~

输出一堆编译过程，最后输出\*\*BUILD SUCCEEDED\*\*表示创建成功；若输出\*\*BUILD FAILED\*\*表示创建失败。成功后会在当前工程目录下创建build目录，结构如下：

MakeFileTest.app就是编译生成的可执行文件，

而MakeFileTest.build文件夹下是一些中间文件

4.2 默认是Release工程，要设置成Debug模式如下：

~~~
$ xcodebuild -sdk iphonesimulator5.0 -configuration Debug
~~~

4.3 clean创建的工程

~~~
$ xcodebuild clean -sdk iphonesimulator5.0 -configuration Debug
~~~

成功输出\*\*CLEAN SUCCEEDED\*\*
