---
layout: post
title: 单例模式
author: fire
categories: design
tags: 设计模式
published: false
---

**单例模式**（Singleton）

**意图：**
保证一个类仅有一个实例，并提供一个访问它的全局访问点。

**适用性：**
当类只能有一个实例而且客户可以从一个众所周知的访问点访问它时。
当这个唯一实例应该是通过子类化可扩展的，并且客户应该无需更改代码就能使用一个扩展的实例时。

**应用场景：**
打印机

**代码示例：**

*饿汉模式*

```
//饿汉模式，很饿很着急，所以类加载时即创建实例对象  
public class Singleton1 {  
      
    private static Singleton1 singleton = new Singleton1();  
      
    private Singleton1(){  
          
    }  
      
    public static Singleton1 getInstance(){  
        return singleton;  
    }  
} 
```

*饱汉模式（又称：懒汉模式）*

```
//饱汉模式，很饱不着急，延迟加载，啥时候用啥时候创建实例，存在线程安全问题  
public class Singleton2 {  
  
    private static Singleton2 singletonnull = null;  
      
    private Singleton2(){  
          
    }  
      
    public static synchronized Singleton2 getInstance(){  
        if(singleton == null)   
            singleton = new Singleton2();  
        return singleton;  
    }  
} 
```

*双重锁模式（又称：懒汉模式的延迟加载）*

```
//饱汉模式的双重锁模式，提高效率  
public class Singleton3 {  
    private static Singleton3 singleton = null;  
      
    private Singleton3(){  
          
    }  
      
    public static Singleton3 getInstance(){  
        if(singleton == null){  
            synchronized(Singleton3.class){  
                if(singleton == null){  
                    singleton = new Singleton3();  
                }  
            }  
        }  
        return singleton;  
    }  
} 
```


**几种模式的比较**

1、饿汉模式是线程安全的，因为实例对象在类加载过程中就会被创建，在getInstance()方法中只是直接返回对象引用。之所以被称为“饿汉”，是因为这种模式创建实例对象比较“急”，真的是饿坏了……
好处：简单明了，无需关注线程安全问题。
缺点：如果在一个大环境下使用了过多的饿汉单例，则会生产出过多的实例对象，无论你是否要使用他们。

2、饱汉模式不是线程安全的，因为是在需要的时候才会产生实例对象，生产之前会判断对象引用是否为空，这里，如果多个线程同时进入判断，就会生成多个实例对象，这是不符合单例的思想的。所以饱汉模式为了保证线程安全，就用synchronized关键字标识了方法。之所以被称为“饱汉”，因为它很饱，不急着生产实例，在需要的时候才会生产。
好处：延时加载，用的时候才会生产对象。
缺点：需要保证同步，付出效率的代价。

3、双重锁模式，是饱汉模式的优化，进行双重判断，当已经创建过实例对象后就无需加锁，提高效率。也是一种推荐使用的方式。

