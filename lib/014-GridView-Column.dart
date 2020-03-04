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
  List<Widget> getData() {
    List jsonList = dataList;
    List<Widget> list = List();
    var count = jsonList.length;
    while (count-- > 2) {
      list.add(Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: Colors.black,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(jsonList[count]["title"]),
            SizedBox(height: 5,),
            Text(jsonList[count]["summary"]),
            Text(jsonList[count]["date"]),
          ],
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      // 宽度：高度
      // childAspectRatio: 0.5,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: getData(),
    );
  }
}
