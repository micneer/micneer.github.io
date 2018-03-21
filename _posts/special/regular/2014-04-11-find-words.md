---
layout: post
title: 查找重复单词
subtitle: regular find words
author: fire
source: http://fireliu.com
categories: regular 
tags: 正则表达式
---

**查找重复单词**

正则表达式：

```c
	\<([a-zA-z]+) +\1\>  
```

解析：

```c
	\< 元字符序列单词开始  
	\> 元字符序列单词结束  
	+ 至少出现一次  
	\1 反向引用  
```

缺点：

```c
	换行的重复单词不能查询..
```