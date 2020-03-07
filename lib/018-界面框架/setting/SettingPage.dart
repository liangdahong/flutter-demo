import 'package:flutter/material.dart';

// container 组件
// Text 组件
class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 这里返回组件
    return Container(
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Text("我的设置界面"),
          Text("我的设置界面"),
          Text("我的设置界面"),
          Text("我的设置界面"),
          Text("我的设置界面"),
        ],
      ),
    );
  }
}
