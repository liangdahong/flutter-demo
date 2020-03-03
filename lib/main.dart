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
  List list = List();

  HomeContent() {
    this.list = dataList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.list.length,
        itemBuilder: (context, idx) {
          return ListTile(
            title: Text(this.list[idx]["title"]),
            subtitle: Text(this.list[idx]["summary"]),
          );
        });
  }
}
