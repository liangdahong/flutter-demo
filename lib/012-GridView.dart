import 'package:flutter/material.dart';
import 'res/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 这里返回组件
    return MaterialApp(
      home: Scaffold(
        // appBar
        appBar: AppBar(
          title: Text("flutter title"),
        ),
        // 内容
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 一行多少个 Widget
      crossAxisCount: 2,
      children: <Widget>[
        Text("001"),
        Text("001"),
        Text("001"),
        Text("001"),
        Text("001"),
        Text("001"),
      ],
    );
  }
}
