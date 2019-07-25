import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '数据回传',
  home: FatherPage(),
));

class FatherPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('父页面')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text('这里显示来自子级页面的数据'),
            MyButton(),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      child: Text('跳转到子页面'),
      onPressed: (){
        navigateToNextPage(context);
      },
    );
  }

  navigateToNextPage(BuildContext context) async {  //启动异步方法
    final result = await Navigator.push(context,  MaterialPageRoute(builder: (context) => SonPage()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('子页面')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('第一个button'),
              onPressed: (){
                Navigator.pop(context,'点击了子页面第一个button');
              },
            ),

            RaisedButton(
              child: Text('第二个button'),
              onPressed: (){
                Navigator.pop(context,'点击了子页面第二个button');
              },
            )
          ],
        ),
      ),
    );
  }
}
