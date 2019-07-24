import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    var stack = Stack(
      alignment: FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://img5.mtime.cn/mg/2019/01/25/100903.64806042_170X256X4.jpg'),
          radius: 100.0,
        ),

        Positioned(child:
        Text(
          'zhengyanfeng.github.io',
          style: TextStyle(
            backgroundColor: Colors.lightBlue,
          ),
        ),
          top: 10,
          left: 10,
        ),

        Positioned(child:
          Text(
            'fat panda',
            style: TextStyle(
              backgroundColor: Colors.lightGreen,
            ),
          ),
          right: 10,
          bottom: 10,
        )

        /*
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),

          padding: EdgeInsets.all(5),
          child: Text('fat panda'),
        )
        */
      ],
    );
    
    return MaterialApp(
      title: 'Stack Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Demo'),
        ),
        
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}