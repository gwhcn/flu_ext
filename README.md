# flu_ext

Flutter控件的扩展函数

### 使用方式
```
 dependencies:
    flu_ext:
        git: https://github.com/gwhcn/flu_ext.git
```

### 已有函数
1. BuildContext扩展
 - textTheme
 - accentTextTheme
 - primaryTextTheme
 - getArguments 是ModalRoute.of(this).settings?.arguments的缩写
 - getArgument 是ModalRoute.of(this).settings?.arguments[key]的缩写

2. Widget扩展
 - Container
 - InkWell
 - Padding
 - Center
 - Align
 - Expanded
 - SafeArea
 - SliverToBoxAdapter
 - SliverPadding
 - SizedBox
 - GestureDetector
 - SingleChildScrollView
 - Flexible
 - DefaultTextStyle
 - intoRow 比较特殊，配合addWidget使用
 - intoColumn 比较特殊，配合addWidget使用
 - intoStack 比较特殊，配合addWidget使用

3. TextSpan扩展
 - RichText

4. String扩展
 - toInt()   为空或异常返回0
 - toIntOrNull() 为空或异常返回null
 - toDouble() 为空或异常返回0.0
 - toDoubleOrNull() 为空或异常返回null
 - isNull 为空返回true，对象为空，不会报空指针
 - isNotNull 为空返回false，对象为空，不会报空指针

5. List扩展
 - isNull 对象为空，不会报空指针
 - isNotNull 对象为空，不会报空指针
 - get(index) list[index]会导致空指针， list?.get(index)避免空针

6. Widgets类 使用方式
Widgets.addWidget(Text("A"))
       .addWidget(Text("B"))
       ....省略.....
       .intoRow()

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
