import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// container 组件
// Text 组件
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
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            ),
            ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text("我是标题1",
              style: TextStyle(
                fontSize: 40,
                color: Colors.red,
              ),),
              subtitle: Text("我的子内容"),
              trailing : Icon(Icons.access_alarms),
            ),
            ListTile(
              title: Text("我是标题1"),
              subtitle: Text("我的子内容"),
            )
          ],
        ),
      ),
    );
  }
}
