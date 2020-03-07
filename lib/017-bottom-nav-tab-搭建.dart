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
      home: Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar
        appBar: AppBar(
          title: Text("flutter title"),
        ),
        // 内容
        body: Text("data"),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置")),
        ],
        currentIndex: selectIndex,
        onTap: (index){
          selectIndex = index;
          setState(() {
            
          });
          print(index);
        },
        ),
      );
  }
}
