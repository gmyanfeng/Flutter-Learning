import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              'https://flutter-io.cn/favicon.ico',
              scale: 1.0,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.colorBurn,

              repeat: ImageRepeat.repeat,
//              fit: BoxFit.cover,
            ),

            width: 600,
            height: 900,
            color: Colors.lightBlue,

          ), //child
        ), //body
      ), //home
    ); //MaterialApp
  }
}