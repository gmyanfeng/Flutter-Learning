import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:dio/dio.dart';


// 页面需要更新，所以使用 StatefulWidget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('首页')),

        body: Container(
          height: 100,
          child: Column(
            children: <Widget>[
              TextField(
//                controller: Controller,
              ),

              RaisedButton(onPressed: null),

              Text(''),
            ],
          ),
        ),
      ),
    );
  }
}


//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//    getHttp();
//
//    return Container(
//      child: Scaffold(
//        body: Center(
//          child: Text('首页'),
//        ),
//      ),
//    );
//  }
//
//  void getHttp() async {
//
//    try{
//      Response response;
//
//      var data = {'name':'fatpanda'};
//      response = await Dio().get('https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=大胸美女');
//
//      return print(response);
//
//    }catch(e){
//      return print(e);
//    }
//  }
//}
