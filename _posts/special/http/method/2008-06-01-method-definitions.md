---
layout: post
title: HTTP请求方式定义
categories: http
tags: HTTP方法
---

HTTP请求方式定义

| 方法 | 说明 |
| :--- | :--- |
| GET | 通过请求URI得到资源 |
| POST | 用于添加新的内容 |
| PUT | 用于修改某个内容 |
| DELETE | 删除某个内容 |
| CONNECT | 用于代理进行传输，如使用SSL |
| OPTIONS | 询问可以执行哪些方法 |
| PATCH | 部分文档更改 |
| PROPFIND(webdav) | 查看属性 |
| PROPPATCH(webdav) | 设置属性 |
| MKCOL(webdav) | 创建集合（文件夹） |
| COPY(webdav) | 拷贝 |
| MOVE(webdav) | 移动 |
| LOCK(webdav) | 加锁 |
| UNLOCK(webdav) | 解锁 |
| TRACE | 用于远程诊断服务器 |
| HEAD | 类似于GET, 但是不返回body信息，用于检查对象是否存在，以及得到对象的元数据 |

**wedav** （Web-based Distributed Authoring and Versioning） 一种基于 HTTP 1.1协议的通信协议。它扩展了HTTP 1.1，在GET、POST、HEAD等几个HTTP标准方法以外添加了一些新的方法，使应用程序可对Web Server直接读写，并支持写文件锁定(Locking)及解锁(Unlock)，还可以支持文件的版本控制。

[更多Method](https://tools.ietf.org/html/rfc2616#section-9){:target="_blank"}

[更多WebDAV](https://tools.ietf.org/html/rfc2518){:target="_blank"}
