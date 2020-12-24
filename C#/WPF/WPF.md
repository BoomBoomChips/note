# WPF

一个WPF只能有一个window这个顶级元素

![image-20201119220604453](D:\note\C#\WPF\WPF.assets\image-20201119220604453.png)

## 属性给值：

### 第一种：

![image-20201119222132270](D:\note\C#\WPF\WPF.assets\image-20201119222132270.png)

后面给name

### 第二种：

![image-20201119222339579](D:\note\C#\WPF\WPF.assets\image-20201119222339579.png)

### 最大宽度，最小宽度：

![image-20201201214306936](D:\note\C#\WPF\WPF.assets\image-20201201214306936.png)



## 保留内容的空格：

![image-20201119224215309](D:\note\C#\WPF\WPF.assets\image-20201119224215309.png)

![image-20201119224221414](D:\note\C#\WPF\WPF.assets\image-20201119224221414.png)

在属性处设置保留空格

## DataContext的使用

![image-20201120094531554](D:\note\C#\WPF\WPF.assets\image-20201120094531554.png)

DataContext可以方便我们快速的绑定：（获取绑定）

![image-20201120094650780](D:\note\C#\WPF\WPF.assets\image-20201120094650780.png)

## 动态的加载

![image-20201130210700842](D:\note\C#\WPF\WPF.assets\image-20201130210700842.png)

利用LogicalTreeHelper.FindLogicalNode(),可以获取节点的对应的对象

![image-20201130211911865](D:\note\C#\WPF\WPF.assets\image-20201130211911865.png)

## Grid面板

![image-20201201223400324](D:\note\C#\WPF\WPF.assets\image-20201201223400324.png)

### ShowGridLines属性：

![image-20201201224023923](D:\note\C#\WPF\WPF.assets\image-20201201224023923.png)

方便调试

### 给值定位

![image-20201201224144465](D:\note\C#\WPF\WPF.assets\image-20201201224144465.png)

行列 

表示在0行，0列 

### 共享尺寸组：share sizeGroup

![image-20201202225646657](D:\note\C#\WPF\WPF.assets\image-20201202225646657.png)

## Canvas面板

进行基于坐标的布局定位

![image-20201203213920079](D:\note\C#\WPF\WPF.assets\image-20201203213920079.png)

![image-20201203214119679](D:\note\C#\WPF\WPF.assets\image-20201203214119679.png)

### 属性

#### EditingMode:

![image-20201203214746352](D:\note\C#\WPF\WPF.assets\image-20201203214746352.png)

会记录轨迹，但是一松开鼠标就会释放

## InkCanvas:画板

![image-20201203215250661](D:\note\C#\WPF\WPF.assets\image-20201203215250661.png)

