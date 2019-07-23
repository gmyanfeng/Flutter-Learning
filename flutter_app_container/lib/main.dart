import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Demo',
      home:Scaffold(

        appBar: AppBar(
          title: Text('Container Demo'),
        ),

        body: Center(
          child: Container(
            child: new Text(
                'Hello, fat panda',
                style: TextStyle(fontSize: 40, backgroundColor: Colors.lightBlue),
            ),

            alignment: Alignment.center,

            width: 500,
            height: 400,
//            padding: const EdgeInsets.all(100),
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            
            margin: const EdgeInsets.all(40),

            decoration: new BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]),

              border: Border.all(width: 5.0, color: Colors.red)
            ),
          ),
        ),
      )
    );
  }
}


