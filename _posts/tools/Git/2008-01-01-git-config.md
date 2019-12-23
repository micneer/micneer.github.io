---
layout: post
title: Git配置用户名和邮箱
author: fire
categories: tools 
tags: Git
---

![title](https://sideproject.cn/images/title/title_001.jpg){:class="image-title"}

Git的配置有三个等级，System、Global、Local三个级别，Syatem是系统级别，针对所有用户有效，Global是用户级别，只对单个用户有效，Local是单个项目级别，只对当前项目有效。

如果三种配置里面都设置了某个参数，那么最后生效的是哪种呢？它们之前的优先级为（由高到低）：

```bash
git config
git config --global
git config --system
```

也就是作用域范围越广的优先级越低。


**查看当前配置**

```bash
git config --list
git config --system --list
git config --global --list
git config --local --list
```

**直接编辑配置文件**

```bash
git config -e
git config -e --system
git config -e --global
```

**用命令配置用户名**

```bash
git config --system user.name yourname
git config --global user.name yourname
git config --local user.name yourname
```

**用命令配置邮箱**

```bash
git config --system user.email yourmail@mail.com
git config --global user.email yourmail@mail.com
git config --local user.email yourmail@mail.com
```

---End---
