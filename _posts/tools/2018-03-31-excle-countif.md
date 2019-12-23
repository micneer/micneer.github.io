---
layout: post
title: Excle统计出现次数
author: fire
categories: tools 
tags: Excle
comment: true
---

![title](https://sideproject.cn/images/title/title_018.jpg){:class="image-title"}

最近做一组数据统计，需要统计Excle中的统计函数**COUNTIF**

COUNTIF 是一个统计函数，用于统计满足某个条件的单元格的数量；例如，统计特定城市在客户列表中出现的次数。

COUNTIF 的最简形式为：

=COUNTIF(要检查哪些区域? 要查找哪些内容?)

```
=COUNTIF(A2:A5,"London")
=COUNTIF(A2:A5,A4)
```