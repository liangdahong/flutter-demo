import 'package:flutter/material.dart';


class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // 这里返回组件
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Text("我的分类界面"),
          Text("我的分类界面"),
          Text("我的分类界面"),
          Text("我的分类界面"),
          Text("我的分类界面"),
        ],
      ),
    );
  }
}