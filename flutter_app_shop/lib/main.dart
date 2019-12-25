import 'package:flutter/material.dart';

import './pages/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Container(
        child: MaterialApp(
          title: 'Flutter Shop Demo',
          debugShowCheckedModeBanner: false,   // 隐藏右上角的 DEBUG 标识
          theme: ThemeData(   // app 的主色调
            primarySwatch: Colors.pink,
          ),
          home: IndexPage(),
        )
    );
  }
}
