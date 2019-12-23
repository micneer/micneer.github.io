---
layout: post
title: Markdown超链接支持_blank属性
author: fire
source: http://fireliu.com
categories: tools 
tags: markdown
---

![title](https://sideproject.cn/images/title/title_015.jpg){:class="image-title"}

**Markdown超链接支持_blank属性**

原生的markdown标记并不支持带这个属性，不过很多扩展的markdown解析是支持的，可以在后面添加如下：

**示例**

[点我试试](http://sideproject.cn){:target="_blank"}

**源码如下**

```xml

[点我试试](http://sideproject.cn){:target="_blank"}

```