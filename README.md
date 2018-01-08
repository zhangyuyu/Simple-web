Sonatype Nexus搭建maven私服
---
## 一、关键字
`gradle`、`maven`、`nexus`、`web`、`proxy repo`。

## 二、简介

本工程是用gradle构建的一个简单web应用。  
主要用于模拟web项目，验证nexus的好处：

* 节省外网带宽
* 加速Maven构建
* 部署第三方构件
* 提高稳定性，增强控制
* 降低中央仓库的负荷

详细内容可参考博客[Nexus-SonatypeNexus入门](http://zhangyuyu.github.io/2018/01/06/Nexus-SonatypeNexus%E5%85%A5%E9%97%A8/)

## 三、运行

1. 搭建nexus proxy repo

2. clone本repo 

3. 配置nexusUrl

    * 在gradle.properties文件中配置nexusUrl为`http://localhost:32768/repository/`
    * 在build.gradle文件中配置maven url为`${nexusUrl}/maven-central/`

4. 运行应用，下载依赖
    ```
    ./gradlew appRun
    ```  

5. 浏览器查看
`http://localhost:8090/simple-web/`

详细内容可参考博客[Nexus - Sonatype Nexus搭建maven私服](http://zhangyuyu.github.io/2018/01/07/Nexus-SonatypeNexus%E6%90%AD%E5%BB%BAmaven%E7%A7%81%E6%9C%8D/#more)

