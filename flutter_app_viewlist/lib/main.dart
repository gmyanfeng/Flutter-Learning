import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('钱包'),
            subtitle: Text('100 ￥'),
            leading: Icon(Icons.account_balance_wallet, color: Colors.lightGreen,),
          ),

          Divider(),
          ListTile(
            title: Text('闹钟'),
            subtitle: Text('你有一个闹钟'),
            leading: Icon(Icons.access_alarm, color: Colors.lightBlue, ),
          ),

          Divider(),
          ListTile(
            title: Text('圆圈'),
            subtitle: Text('这是一个圆圈'),
            leading: Icon(Icons.account_circle, color: Colors.limeAccent,),
          ),

          Divider()
        ],
      ),
    );

    return MaterialApp(
      title: 'ViewList Demo',

      home: Scaffold(
        appBar: AppBar(
          title: Text('ViewList Demo'),
        ),

        body: Center(
          child: card,
        ),
      ),
    );
  }
}