import 'package:flutter/material.dart';
import 'package:flutterdemo/018-界面框架/tabs/TabPage.dart';

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
      home: TabPage(),
    );
  }
}

