---
layout: post
title: Git中查看提交了但未推送的记录
author: fire
categories: tools 
tags: Git
---

![title](https://sideproject.cn/images/title/title_006.jpg){:class="image-title"}

有时候本地提交了代码，但是未提交到远程仓库中，在团队协作开发中，造成一些不便，那么怎么在Git中查看提交了（commit）但未推送（push）的记录呢？

主要有以下3种方式：

```bash
git status  只能查看未传送提交的次数
git cherry -v  只能查看未传送提交的描述/说明
git log master ^origin/master  则可以查看未传送提交的详细信息
```

**git cherry**查看的是当前目录：

```bash
git cherry -v
```

下面的则是查看指定目录：

```bash
git log master ^origin/master
```

这个master可以修改为其它的分支。

**回退本地提交**

回退当次提交

```bash
git reset --soft HEAD^
```