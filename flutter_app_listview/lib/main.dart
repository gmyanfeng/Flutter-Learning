import 'package:flutter/material.dart';

void main() => runApp(MyApp(

  items: List<String>.generate(1000, (i) => 'item $i')

));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final List<String> items;
  MyApp({Key key, @required this.items}):super(key:key)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Demo'),
        ),

        // ListView
//        body: ListView(
//          children: <Widget>[
//            ListTile(
//              leading: Icon(Icons.access_time),
//              title: Text('access_time'),
//            ),
//
//            ListTile(
//              leading: Icon(Icons.account_balance),
//              title: Text('account_balance'),
//            ),
//          ],
//        )


        //横向滚动
//        body: Center(    //1.让横向列表居中
//          child: Container(
//            height: 300,
//            child: MyList(),
//          ),
//        ),
      
      body: ListView.builder(
        itemBuilder:(BuildContext context, int index) {
          return Text('${items[index]}');
        },
        itemCount: items.length,
      ),
    );
  }
}


//MyList 类
class MyList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 150,
          color: Colors.lightGreenAccent,
        ),

        Container(
          width: 150,
          color: Colors.amber,
        ),

        Container(
          width: 150,
          color: Colors.deepOrange,
        ),

        Container(
          width: 150,
          color: Colors.deepPurpleAccent,
        ),

        Container(
          width: 150,
          color: Colors.redAccent,
        ),
      ],

    );
  }
}


