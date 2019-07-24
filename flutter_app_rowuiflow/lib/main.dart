import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Row Demo',

      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Demo'),
        ),

        // 垂直布局
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('I am fat panda'),
            Expanded(child: Center(child: Text('I am from China, Shenzhen'),)),
            Center(child: Text('I a iOS developer'),),
          ],
        ),

        // 水平布局
        /*
        body: Row(
          children: <Widget>[


            //非灵活布局
            /*
            RaisedButton(onPressed: (){

            },
              color: Colors.redAccent,
              child: Text('red button'),
            ),

            RaisedButton(onPressed: (){

            },
              color: Colors.greenAccent,
              child: Text('green button'),
            ),

            RaisedButton(onPressed: (){

              },
              color: Colors.blueAccent,
              child: Text('blue button'),
            ),
            */

            //灵活布局
            /*
            Expanded(
                child:RaisedButton(onPressed: (){},
                  color: Colors.purpleAccent,
                  child: Text('purple button'),
                )
            ),

            Expanded(
                child:RaisedButton(onPressed: (){},
                  color: Colors.yellowAccent,
                  child: Text('yellow button'),
                )
            ),

            Expanded(
                child:RaisedButton(onPressed: (){},
                  color: Colors.cyanAccent,
                  child: Text('cyan button'),
                )
            )
            */

            //混合布局
            RaisedButton(onPressed: (){},
              color: Colors.purpleAccent,
              child: Text('purple button'),
            ),

            Expanded(
                child:RaisedButton(onPressed: (){},
                  color: Colors.yellowAccent,
                  child: Text('yellow button'),
                )
            ),

            RaisedButton(onPressed: (){},
                color: Colors.cyanAccent,
                child: Text('cyan button'),
            ),

          ],
        )
          */
      ),
    );
  }
}

