import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Demo'),
        ),

        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('access_time'),
            ),

            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('account_balance'),
            ),
          ],
        )
      ),
    );
  }
}
