# MAVEN学习中的一些问题

##注意
任何xml文件中能写什么东西都是由约束决定

**直接依赖**
项目中直接导入的jar包，就是该项目的直接依赖包
**传值依赖**
项目中没有直接导入jar包，可以通过项目直接依赖jar包传递到项目中

## jar包冲突，
###解决方式一：依赖调解原则

**第一声明优先原则**
那个jar包的坐标在靠上的位置，这个jar包就是先声明的。先声明的jar包坐标下的依赖包，可优先进入项目中。

**路径，近者优先原则**

spring-contex和spring-webmvc都会传递过来 spirng-beans，那如果直接把spring-beans的依赖直接写到pom文件中，那么项目就不会再使用其他依赖传递来的spring-beans，因为自己直接在pom中定义spring-beans要比其他依赖传递过来的路径要近。
在本工程中的pom中加入spirng-beans-5.0.2的依赖，根据路径近者优先原则，系统将导入spirng-beans-5.0.2：


###解决冲突方式二：排除依赖

**可以通过排除依赖方法辅助依赖调解**
在依赖中设置中添加排除依赖
<exclusions></exclusions>

###解决冲突方式二：锁定版本

面对众多的依赖，有一种方法不用考虑依赖路径、声明优化等因素可以采用直接锁定版本的方法确定依赖构件的版本，版本锁定后则不考虑依赖的声明顺序或依赖的路径，以锁定的版本的为准添加到工程中，此方法在企业开发中常用。

**可以把版本号提取出来，使用<properties>标签设置成变量**

##定义pom.xml文件

maven工程首先要识别依赖，web工程实现SSM整合，需要依赖spring-webmvc5.0.2、 spring5.0.2、mybatis3.4.5等，在pom.xml添加工程如下依赖：
（在实际企业开发中会有架构师专门来编写pom.xml）
分两步：
-A 锁定依赖版本
-B 添加依赖



**依赖导入问题**

maven依赖进不去，把dependencyManagement去掉就，会好用，也能继承，可能是3.6以上的

![](D:\note\MAVEN\图片\去dependencyManagement.jpg)

properties   照写即可

![统一管理](D:\note\MAVEN\图片\统一管理.png)

