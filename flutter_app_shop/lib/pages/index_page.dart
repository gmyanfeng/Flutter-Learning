import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home_page.dart';
import 'category_page.dart';
import 'shopping_cart_page.dart';
import 'member_page.dart';


class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  //  初始化底部 bar item 的数据源，包含图片和标题
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员中心'),
    ),
  ];

  // 底部 bar item 相对应的页面的数据源
  final List tabBodies = [
    HomePage(),
    CategoryPage(),
    ShoppingCartPage(),
    MemberPage(),
  ];

  int currentIndex = 0; //当前选中的 tab

  var currentPage;  // 当前展示的页面


  // 初始化，默认选择第一个tab
  @override
  void initState() {
    // TODO: implement initState
    currentPage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1),

      // 底部 tab 组件
      bottomNavigationBar: BottomNavigationBar(
        items: bottomTabs,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,

        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[index];
          });
        }
      ),

      body: currentPage,
    );
  }
}
