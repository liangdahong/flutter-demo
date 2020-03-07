import 'package:flutter/material.dart';
import 'res/data.dart';

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
        body: Home(111),
      ),
    );
  }
}

class Home extends StatefulWidget {
  int count = 1;
  Home(this.count);
  
  @override
  _HomeState createState() => _HomeState(count);
}

class _HomeState extends State<Home> {
  int count = 1;
  _HomeState(this.count);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        Text("$count"),
        RaisedButton(onPressed: () {
          count++;
          print("数字是：$count");
          setState(() {
            // count++;
          });
        })
      ],
    );
  }
}

class MyButtonView extends StatelessWidget {
  int count = 1;
  MyButtonView(this.count);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        Text("$count"),
        RaisedButton(onPressed: () {
          count++;
          print("数字是：$count");
        })
      ],
    );
  }
}
