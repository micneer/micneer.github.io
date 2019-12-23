---
layout: post
title: Nginx日志格式配置
author: fire
source: http://fireliu.com
categories: framework 
tags: Nginx Log
---

**Nginx日志格式配置**

Nginx服务器日志相关指令主要有两条，

一条是log\_format，用来设置日志格式，
另外一条是access_log，用来指定日志文件的存放路径、格式和缓存大小，

一般在nginx的配置文件中日记配置(/etc/nginx/nginx.conf)。

nginx的log_format有很多可选的参数用于指示服务器的活动状态，默认的是：

```
log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '   
                  '$status $body_bytes_sent "$http_referer" '    
                  '"$http_user_agent" "$http_x_forwarded_for"';
```

更详细的信息需要自己设置log_format，具体可设置的参数格式及说明如下：



| 参数 | 说明 | 示例 |
| :--- | :--- | :--- |
| $remote_addr | 客户端地址 | 211.28.65.253 |
| $remote_user | 客户端用户名称 | -- |
| $time_local | 访问时间和时区 | 18/Jul/2012:17:00:01 +0800 |
| $request | 请求的URI和HTTP协议 | "GET /article-10000.html HTTP/1.1" |
| $http_host | 请求地址，即浏览器中你输入的地址（IP或域名） | www.it300.com192.168.100.100 |
| $status | HTTP请求状态 | 200 |
| $upstream_status | upstream状态 | 200 |
| $body_bytes_sent | 发送给客户端文件内容大小 | 1547 |
| $http_referer | url跳转来源 | https://www.baidu.com/ |
| $http_user_agent | 用户终端浏览器等信息 | "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SV1; GTB7.0; .NET4.0C; |
| $ssl_protocol | SSL协议版本 | TLSv1 |
| $ssl_cipher | 交换数据中的算法 | RC4-SHA |
| $upstream_addr | 后台upstream的地址，即真正提供服务的主机地址 | 10.10.10.100:80 |
| $request_time | 整个请求的总时间 | 0.205 |
| $upstream_response_time | 请求过程中，upstream响应时间 | 0.002 |

示例：

```
略
```