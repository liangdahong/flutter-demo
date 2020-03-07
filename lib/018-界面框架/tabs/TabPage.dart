import 'package:flutter/material.dart';

import 'package:flutterdemo/018-界面框架/home/HomePage.dart';
import 'package:flutterdemo/018-界面框架/category/CategoryPage.dart';
import 'package:flutterdemo/018-界面框架/setting/SettingPage.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int selectIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  
  final List<String> titles = [
    "首页",
    "分类",
    "设置",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        title: Text(titles[selectIndex]),
      ),
      // 内容

      body: pages[selectIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(titles[0])),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text(titles[1])),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text(titles[2])),
        ],
        currentIndex: selectIndex,
        // iconSize: 100.0,
        fixedColor: Colors.red,
        onTap: (index) {
          selectIndex = index;
          setState(() {});
          print(index);
        },
      ),
    );
  }
}