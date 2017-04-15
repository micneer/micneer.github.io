---
layout: post
title: Linux关闭X11图形界面启动
author: fire
categories: linux 
tags: x11
---

1. 关闭X11图形界面修改启动配置

vi /etc/inittab

```c
# Default runlevel. The runlevels used are:
#   0 – halt (Do NOT set initdefault to this)
#   1 – Single user mode
#   2 – Multiuser, without NFS (The same as 3, if you do not have networking)
#   3 – Full multiuser mode
#   4 – unused
#   5 – X11
#   6 – reboot (Do NOT set initdefault to this)
#
```

id:3:initdefault:

默认为5 X11图形界面启动，关闭只需要将5修改为3，然后保存退出，重启就看到效果，如果需要换回图形界面，再将3改回5即可。