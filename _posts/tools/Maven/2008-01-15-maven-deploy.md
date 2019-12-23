---
layout: post
title: Maven打包jar的同时打包javadoc和source
author: fire
categories: tools 
tags: maven
---

![title](https://sideproject.cn/images/title/title_010.jpg){:class="image-title"}

**在pom.xml中增加如下脚本**

```xml

<build>
    <plugins>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-javadoc-plugin</artifactId>
            <version>2.10.4</version>
            <executions>
                <execution>
                    <id>attach-javadocs</id>
                    <goals>
                        <goal>jar</goal>
                    </goals>
                </execution>
            </executions>
            <configuration>
                <encoding>UTF-8</encoding>
                <aggregate>true</aggregate>
                <charset>UTF-8</charset>
                <docencoding>UTF-8</docencoding>
                <additionalparam>-Xdoclint:none</additionalparam>
            </configuration>
        </plugin>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.3</version>
            <configuration>
                <source>1.8</source>
                <target>1.8</target>
            </configuration>
        </plugin>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-source-plugin</artifactId>
            <version>3.0.1</version>
            <executions>
                <execution>
                    <id>attach-sources</id>
                    <goals>
                        <goal>jar</goal>
                    </goals>
                </execution>
            </executions>
        </plugin>
    </plugins>
</build>

```