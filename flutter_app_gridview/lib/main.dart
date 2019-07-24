import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter GridView Demo',
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter GridView Demo'),
        ),

        /*
        body: GridView.count(
          crossAxisCount: 5,   // 一列放置 item 的数量
          crossAxisSpacing: 10,     // 网格之间的间距
          mainAxisSpacing: 10, // 行距
          padding: EdgeInsets.all(20),  //距离外部容器的间距

          children: <Widget>[
            Image.network('http://img5.mtime.cn/mg/2019/01/25/100903.64806042_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/09/171109.73085148_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/06/04/093101.42370212_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/25/112701.78806254_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/05/20/092153.71059939_170X256X4.jpg', fit: BoxFit.cover,),
            Image.network('http://img5.mtime.cn/mg/2019/01/25/100903.64806042_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/09/171109.73085148_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/06/04/093101.42370212_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/25/112701.78806254_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/05/20/092153.71059939_170X256X4.jpg', fit: BoxFit.cover,),
          ],
        )
        */

        body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7  // 宽高比
            ),

          children: <Widget>[
            Image.network('http://img5.mtime.cn/mg/2019/01/25/100903.64806042_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/09/171109.73085148_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/06/04/093101.42370212_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/25/112701.78806254_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/05/20/092153.71059939_170X256X4.jpg', fit: BoxFit.cover,),
            Image.network('http://img5.mtime.cn/mg/2019/01/25/100903.64806042_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/09/171109.73085148_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/06/04/093101.42370212_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/01/25/112701.78806254_170X256X4.jpg', fit: BoxFit.cover,),

            Image.network('http://img5.mtime.cn/mg/2019/05/20/092153.71059939_170X256X4.jpg', fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }

}
