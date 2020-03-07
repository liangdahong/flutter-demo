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
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconContainer(Icons.home);
        // return IconContainer(Icons.home, size: 40, color: Colors.white);
  }
}

class IconContainer extends StatelessWidget {
  double size = 30.0;
  Color color = Colors.white;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: Center(
        child: Icon(this.icon, size: this.size, color: this.color),
      ),
    );
  }
}