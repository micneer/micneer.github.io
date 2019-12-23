---
layout: post
title: Git分支操作
author: fire
categories: tools 
tags: Git
---

![title](https://sideproject.cn/images/title/title_002.jpg){:class="image-title"}

**查看分支**

```bash
# 查看本地分支
git branch

# 查看本地和远程所有分支
git branch -a

# 删除本地分支
git branch -d [本地分支]

# 删除远程分支
git push origin :serverfix
```

**切换分支**

```bash
# 切换到本地dev分支
git checkout dev

# 从远程dev分支创建本地dev分支，并切换到dev分支
git checkout origin/dev -b dev
```
