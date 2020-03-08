import 'package:flutter/material.dart';

class DatePage extends StatefulWidget {
  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        title: Text("详情"),
      ),
      // 内容
      body: Container(
        child: Text("我是详情界面"),
      ),
    );
  }
}