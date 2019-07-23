import 'package:flutter/material.dart';

//主函数
void main() => runApp(MyApp());

//声明 MyApp 类
class MyApp extends StatelessWidget{

  // 重写 build 方法
  @override
  Widget build(BuildContext context){

    //返回一个Material 风格组件
    return MaterialApp(

      title: 'Welcome to Flutter',
      home: Scaffold(

        appBar: AppBar(
          //app bar 的 title， 可以类比于 iOS 的 navigationbar 的 title
          title: Text('Hello World'),
        ),

        // 添加一个 Hello World 的文本
        body: Center(
          child: Text(
              'Hello World',
          ),
        ),
      ),
    );
  }

}