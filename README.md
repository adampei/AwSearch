# AwSearch

## 一款简易自定义搜索框

> 简介: 完全自定义的搜索框, 搜索icon图片可以更改, icon大小, 边距可变.placeholder颜色,字体大小可变.textfield输入框字体大小颜色可变.搜索整个背景颜色, 边距, 圆角等可变; 右侧按钮可设置图片, 边距等

## 用法

### 初始化

```objc
AwSearch * searchView = [[AwSearch alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 55)];

```

### 设置不通的搜索图片如下图
* 属性`iconName`
```objc
// 设置icon
// 图片
searchView.iconName = @"search_icon_white"; //search_icon_white search_icon
```
![image](https://github.com/adampei/AwSearch/blob/master/images/a_1.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/a_2.png)

### 设置图片的内边距
* 通过设置属性`insetsIcon`
```objc
// icon 位置
//searchView.insetsIcon = UIEdgeInsetsMake(0, 30, 0, 0);
```
![image](https://github.com/adampei/AwSearch/blob/master/images/a_3.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/a_4.png)

### 设置placeholder颜色以及字体大小
* 设置placeholder内容通过属性 `placeHolder`
```objc
// 设置placehodler
searchView.placeHolder = @"请输入要搜索的内容";
```
*设置placeholder颜色`colorPlaceholder`
```objc
/// placeholder 颜色
//searchView.colorPlaceholder = [UIColor yellowColor];
```
* 设置placehodler字体大小`cusFontPlaceHolder`
```objc
/// placeholder 字体大小
searchView.cusFontPlaceHolder = 20;
```
![image](https://github.com/adampei/AwSearch/blob/master/images/b_1.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/b_2.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/b_3.png)


### 设置输入框背景色, 圆角, 以及边距

* 设置背景色`colorSearchBg`

```objc
//设置搜索框背景色
//searchView.colorSearchBg = [UIColor orangeColor];

```

* 设置边距`insetsSearchBg`

```objc
/// 设置灰色背景边距
//searchView.insetsSearchBg = UIEdgeInsetsMake(0, 0, 0, 0);

```

* 设置圆角`raidus`

```objc
/// 圆角
//searchView.raidus = 10;
```

![image](https://github.com/adampei/AwSearch/blob/master/images/c_1.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/c_2.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/c_3.png)

### 输入框字体颜色, 大小, 以及边距

* 字体颜色`colorTxtInput`

```objc
// textfield 字体颜色
//searchView.colorTxtInput = [UIColor redColor];
``

* 字体大小`cusFontTxt`

```objc
// textfield 字体大小
//searchView.cusFontTxt = 20;
```

* 输入框边距`insetsTxtfield`

```objc
/// 设置txtfield边距 左侧距离icon 其他距离灰色背景
//searchView.insetsTxtfield = UIEdgeInsetsMake(10, 10, 20, 50);
```

![image](https://github.com/adampei/AwSearch/blob/master/images/d_1.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/d_2.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/d_3.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/d_4.png)

### 设置右侧按钮字体颜色, 背景色, 背景图片, 图片, 标题等这里只列举部分图片展示

* 按钮图片`imgBtn`

```objc
/// 按钮图片
//searchView.imgBtn = @"search_icon_white";
```

* 标题`titleBtn`

```objc
// 标题
searchView.titleBtn = @"确定";
```

* 字体颜色`colorTitleBtn`

```objc
/// 颜色
//searchView.colorTitleBtn = [UIColor redColor];
```

* 按钮背景图`imgBtnBg`

```objc
/// 按钮背景图片
//searchView.imgBtnBg = @"search_icon";
```

* 按钮边距`insetsBtn`

```objc
/// 按钮边距
//searchView.insetsBtn = UIEdgeInsetsMake(5, 10, 10, 20);
````

![image](https://github.com/adampei/AwSearch/blob/master/images/e_1.png)
![image](https://github.com/adampei/AwSearch/blob/master/images/e_2.png)
