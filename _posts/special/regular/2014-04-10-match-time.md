---
layout: post
title: 匹配时间
subtitle: regular time
author: fire
source: http://fireliu.com
categories: regular 
tags: 正则表达式
---

**匹配时间**
 
**正则表达式：**

**12小时**

```c
    (1[012]|[1-9]):[0-5][0-9] (am|pm)  
```

**24小时**

```c
    (2[0-3]|[01]?[0-9]):[0-5][0-9] (am|pm)  
```

**解析：**
   
**缺点：**
    