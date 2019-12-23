---
layout: post
title: Tomcat统计访问ip和ip的访问次数
author: fire
categories: tomcat 
tags: 配置
---

在日志目录下面找到访问日志  access_log.2017-07-01.log

统计访问ip和每个ip的访问次数

```

awk '{print $1}' access_log.2017-07-01.log | sort -n | uniq -c | sort -rn | head -n 10

```