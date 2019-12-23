---
layout: post
title: Github项目fork后怎么更新
author: fire
categories: tools 
tags: Git
---

![title](https://sideproject.cn/images/title/title_004.jpg){:class="image-title"}

用命令行，流程如下：

先判断是否建立了主repo的远程源：

```bash
git remote -v
```

如果里面只能看到你自己的两个源(fetch 和 push)。

```bash
origin   url(fetch)
origin   url(push)
```

那就需要添加主repo的源：

```bash
git remote add upstream URL
git remote -v
```

然后你就能看到upstream了。

```bash
origin   url(fetch)
origin   url(push)
upstream    url(fetch)
upstream    url(push)
```

如果想与主repo合并：

```bash
git fetch upstream
git merge upstream/master
```