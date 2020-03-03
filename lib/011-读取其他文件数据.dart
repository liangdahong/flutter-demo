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
  List<Widget> getData() {
    List<Widget> tempList = List();
    List jsonList = dataList;
    for (var i = 0; i < jsonList.length; i++) {
      var item = jsonList.elementAt(i);
      tempList.add(ListTile(
        title: Text(item["title"]),
        subtitle: Text(item["summary"]),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getData(),
    );
  }
}
