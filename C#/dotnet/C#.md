# C#

**文件结构**

解决方案包含各个项目文件，然后项目在包含细节slm解决方案

csproj记录了有哪些文件的包含

**三种注释：**

- 文档注释，对**类**和**方法**进行注释的一个东西。

- 单行注释
- 多行注释

用于代码缩放

#region 练习

​      Console.WriteLine("*********************");

​      Console.WriteLine("hello word");VS

​      Console.WriteLine("*********************");

​      \#endregion



## VS快捷键：

![image-20200802164430978](assest\image-20200802164430978.png)

region后面可以输入中文然后解释，不用加//

## 注意：

Console.Readkey不能嵌套在Writeline中

想要特定启动一个，可以直接设为活服务器

### ToString的特殊用法：

![image-20200727000031829](assest\image-20200727000031829.png)

.net是一种多语言的平台，跨平台的

![image-20200706231310656](D:\note\C#\assest\image-20200706231310656.png)

![image-20200706231930370](D:\note\C#\assest\image-20200706231930370.png)

MSIL微软中间语言，进而实现跨平台

### @的作用：

取消斜线在字符串中的转义作用。

### 资源操作

用完资源要close()；懂不？菜鸡

流操作等，

或者直接利用using来写方法，using(类的操作){方法}

## 命名空间

可以认为类是属于命名空间的。
如果在当前项目中没有这个类的命名空间，需要我们手动的导入这个类所在的
命名空间。
1)、用鼠标去点
2)、alt+shift+F10
3)、记住命名空间，手动的去引用

2、在一个项目中引用另一个项目的类
1)、添加引用
2)、引用命名空间

## using的三种用法:

**1.using指令。**

using 命名空间名字。
例如：

```
using System; 
```

这样可以在程序中直接用命令空间中的类型，而不必指定类型的详细命名空间，类似于Java的import，这个功能也是最常用的，几乎每个cs的程序都会用到。
例如：using System; 一般都会出现在*.cs中。

**2.using别名。**

using 别名 = 包括详细命名空间信息的具体的类型。
例如：

```
using aClass = NameSpace1.MyClass; 
```

这种做法有个好处就是当同一个cs引用了两个不同的命名空间，但两个命名空间都包括了一个相同名字的类型的时候。当需要用到这个类型的时候，就每个地方都要用详细命名空间的办法来区分这些相同名字的类型。而用别名的方法会更简洁，用到哪个类就给哪个类做别名声明就可以了。注意：并不是说两个名字重复，给其中一个用了别名，另外一个就不需要用别名了，如果两个都要使用，则两个都需要用using来定义别名的。

**3.using语句。**

定义一个范围，在范围结束时处理对象。
场景：
当在某个代码段中使用了类的实例，而希望无论因为什么原因，只要离开了这个代码段就自动调用这个类实例的Dispose。
要达到这样的目的，用try...catch来捕捉异常也是可以的，但用using也很方便。

**完了就回收。**

## 操作：

### 占位符：{0}代替

![image-20200715231613008](C:\Users\87676\AppData\Roaming\Typora\typora-user-images\image-20200715231613008.png)



### 强制转换：

int i = Convert.ToInt32(s);

或者和JAVA类似，使用 int i =1 ; String str ="aaa"  ; str+1强制转换

int a = (int)"33"

注意强制转换是不安全的，会丢失进度

![image-20200716234055006](D:\note\C#\assest\image-20200716234055006.png)

\表示转义

decimal为金钱变量：decimal d = 5.55m;

## Switch-case

![image-20200719232924172](D:\note\C#\assest\image-20200719232924172.png)

switch语句，值1、2、3、4是匹配，语句块就是代码块

![image-20200719234346905](\assest\image-20200719234346905.png)

**注意每个都要break，不然会一直执行下去的。**

最后会有一个defaut，如果都没有，将直接执行default的。

### if-else if不同点：

if-else if ：可以处理范围

switch：一般只能用于等值比较



### 循环

while：固定次数

do-while:	先执行后

for循环：知道循环的次数



### break，continue;

![image-20200720214431493](\assest\image-20200720214431493.png)

### 三目运算符：

int max = a>b? a : b ;

### GOTO语句：

```
using System;
 
namespace GoTo
{
    class Program
    {
        static void Main() 
        {
            goto here;
                Console.WriteLine("First");
 
             here:
                Console.WriteLine("Second");
        }
    }
}
```

- **goto语句不可以跳到for循环中。**

- **goto语句不可以跳到类的外面。**

- **goto语句不可以退出try{}catch()finally{}语句。**

还可以这样：

![image-20200720215154585](D:\note\C#\dotnet\assest\image-20200720215154585.png)

## 常量：

![image-20200720215313306](C:\Users\87676\AppData\Roaming\Typora\typora-user-images\image-20200720215313306.png)

### 枚举常量：

枚举就是定义了一个类型

![image-20200720215420712](\assest\image-20200720215420712.png)

**就是限定了范围的常量**

EG: enum people{man,woman};

通常和类定义在同一级别

![image-20200720220500119](assest\image-20200720220500119.png)

枚举不需要加双引号，：具体使用

![image-20200720220652141](D:\note\C#\dotnet\assest\image-20200720220652141.png)

定了gender类型的变量，然后，再用规定的枚举类型中的值进行赋值

![image-20200720221415121](\assest\image-20200720221415121.png)

![image-20200720221642803](\assest\image-20200720221642803.png)

## 结构：

![image-20200720221919218](\assest\image-20200720221919218.png)

重用

![image-20200720224954462](D:\note\C#\dotnet\assest\image-20200720224954462.png)

## 单位换算：

![image-20200720225342861](\assest\image-20200720225342861.png)

## 数组：

![image-20200720230134106](\assest\image-20200720230134106.png)

## out和ref：

out向外面传值。

![image-20200721222358802](assest\image-20200721222358802.png)

注意看上面，number也变成了20。注意看用法，形参前面也要加一个out，相当于建立了一种联系。

要是是out类型的，一定要在方法中对传入的变量进行返值

### ref:引用传递

引用就是引用地址，值传递就是值赋予

ref可以说是双向，既可以传入，也可以传出

例子：

![image-20200721230132437](D:\note\C#\dotnet\assest\image-20200721230132437.png)

![image-20200721231205580](D:\note\C#\dotnet\assest\image-20200721231205580.png)

## 类型转换：

convert也是转换

得到的是bool值

![image-20200721224754865](D:\note\C#\dotnet\assest\image-20200721224754865.png)

![image-20200721224901416](D:\note\C#\dotnet\assest\image-20200721224901416.png)

将字符串转换为Int类型

![image-20200721225129122](\assest\image-20200721225129122.png)

注意看上面，很巧妙

## 类：

C#的类，和JAVA一样，但是GET和SET方法，不一样，他是直接调用属性赋值取值的。

可以在其中对其进行限定

![image-20200722231718953](assest\image-20200722231718953.png)



## 继承：



**子类继承了父类的属性和方法，但是子类并没有继承父类的私有字段。**

子类并没有继承父类的构造函数，但是。子类会默认的调用父类无参数的构造函数，
创建父类对象，让子类可以使用父类中的成员。
所以，如果在父类中重新写了一个有参数的构造函数之后，那个无参数的就被干掉了，
子类就调用不到了，所以子类会报错。
解决办法：
1)、在父类中重新写一个无参数的构造函数。
2)、在子类中显示的调用父类的构造函数，使用关键字:base()

![image-20200726223959379](assest\image-20200726223959379.png)

## object:

![image-20200726224207296](C:\Users\87676\AppData\Roaming\Typora\typora-user-images\image-20200726224207296.png)





## params可变参数

![image-20200726220822037](\assest\image-20200726220822037.png)

是在数组头前定义的。

## 字符串提供的各种方法：

1)、Length：获得当前字符串中字符的个数
2)、ToUpper():将字符转换成大写形式
3)、ToLower():将字符串转换成小写形式
4)、Equals(lessonTwo,StringComparison.OrdinalIgnoreCase):比较两个字符串，可以忽略大小写
5)、Split()：分割字符串，返回字符串类型的数组。
6)、Substring()：解决字符串。在截取的时候包含要截取的那个位置。
7)、IndexOf():判断某个字符串在字符串中第一次出现的位置，如果没有返回-1、值类型和引用类型在内存上存储的地方不一样。
8)、LastIndexOf()：判断某个字符串在字符串中最后一次出现的位置，如果没有同样返回-1
9)、StartsWith():判断以....开始
10)、EndsWith():判断以...结束
11)、Replace():将字符串中某个字符串替换成一个新的字符串
12)、Contains():判断某个字符串是否包含指定的字符串
13)、Trim():去掉字符串中前后的空格
14)、TrimEnd()：去掉字符串中结尾的空格
15)、TrimStart()：去掉字符串中前面的空格
16)、string.IsNullOrEmpty():判断一个字符串是否为空或者为null
17)、string.Join()：将数组按照指定的字符串连接，返回一个字符串。

## 关键字new

1、实例化对象，

2、隐藏父类成员

子类和父类同名，按道理是继承父类的方法，在子类中也定义同名方法，是以子类为主，会报警告。但是在方法前加new就表示隐藏父类的方法

![image-20200726225000177](assest\image-20200726225000177.png)

## 里氏转换

1)、子类可以赋值给父类
2)、如果父类中装的是子类对象，那么可以讲这个父类强转为子类对象。

子类对象可以调用父类中的成员，但是父类对象永远都只能调用自己的成员。

## as和is

### is

检查一个对象是否兼容于指定的类型，不返回Boolean值。注意is操作符永远不会抛异常。is操作符通常这样使用：

```
if（o is Employee）
{
  Employee e=(Employee)  0;
  //其他处理...  
}
```

### **as**

1、检查对象类型的兼容性，并返回转换结果，如果不兼容则返回null；
2、不会抛出异常；
3、如果结果判断为空，则强制执行类型转换将抛出NullReferenceException异常；
4、用as来进行类型转换的时候，所要转换的对象类型必须是目标类型或者转换目标类型的派生类型

例如 

　　代码如下:

　　object o = new object();  
　　Label lb = o as Label;  
　　if (lb == null)
　　{
  　　Response.Write("类型转换失败");
　　}
　　else
　　{   
  　 Response.Write("类型转换成功"); 
　　}

 

使用as操作符有如下几点限制

第一个就是，不用在类型之间进行类型转化，即如下编写就会出现编译错误。

 

　　代码如下:

　　NewType newValue = new NewType();
　　NewType1 newValue = newValue as NewType1;

 

第二个就是，不能应用在值类型数据，即不能如下写（也会出现编译错误）。

 

　　代码如下:

　　object objTest = 11;
　　int nValue = objTest as int;

### **as与is的区别**

1、AS在转换的同事兼判断兼容性，如果无法进行转换，则 as 返回 null（没有产生新的对象）而不是引发异常。有了AS我想以后就不要再用try-catch来做类型转换的判断了。因此as转换成功要判断是否为null。

2、AS是引用类型类型的转换或者装箱转换，不能用与值类型的转换。如果是值类型只能结合is来强制转换
3、IS只是做类型兼容判断，并不执行真正的类型转换。返回true或false，不会返回null，对象为null也会返回false。

4、AS模式的效率要比IS模式的高，因为借助IS进行类型转换的化，需要执行两次类型兼容检查。而AS只需要做一次类型兼容，一次null检查，null检查要比类型兼容检查快。

## Collection集合

## List

### Arraylist（动态列表）

list[i]中若存的是对象，就是objec流：t类

![image-20200726234843567](\assest\image-20200726234843567.png)

![image-20200726234959569](assest\image-20200726234959569.png)

不用转型，直接用就行

### Hashtable（哈希表）

![image-20200726235506447](assest\image-20200726235506447.png)

不支持泛型，但是他是直接用object进行key-value封装

### Dictionary(字典)

![image-20200730114851450](assest\image-20200730114851450.png)

## 