import 'package:flutter/material.dart';


class MyLovePage extends StatefulWidget {
  @override
  _MyLovePageState createState() => _MyLovePageState();
}

class _MyLovePageState extends State<MyLovePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        title: Text("我的收藏"),
      ),
      // 内容
      body: Container(
        child: Text("我是收藏界面"),
      ),
    );
  }
}