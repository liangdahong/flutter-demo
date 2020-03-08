import 'package:flutter/material.dart';

import './DatePage.dart';
import './MyLovePage.dart';
import './SearchPage.dart';
import './DatePick.dart';

import 'package:date_format/date_format.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    DateTime date = DateTime.now();
    print("现在的时间是：$date");
    print("现在的时间的毫秒是：${date.millisecondsSinceEpoch}");
    print(
        "毫秒到时间是：${DateTime.fromMillisecondsSinceEpoch(date.millisecondsSinceEpoch)}");
    print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
    print(formatDate(date, [yyyy, "-", mm, "-", dd, HH, ":", MM, ":", ss]));
  }

  @override
  Widget build(BuildContext context) {
    // 这里返回组件
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            RaisedButton(
                child: Text("iOS"),
                onPressed: () {
                  print("传值去搜索");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    var searchPage = SearchPage(
                      tag: "iOS",
                    );
                    return searchPage;
                  }));
                }),
            RaisedButton(
                child: Text("安卓"),
                onPressed: () {
                  print("传值去搜索");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    var searchPage = SearchPage();
                    searchPage.tag = "安卓";
                    return searchPage;
                  }));
                }),
            RaisedButton(
                child: Text("web"),
                onPressed: () {
                  print("传值去搜索");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    var searchPage = SearchPage(
                      tag: "web",
                    );
                    return searchPage;
                  }));
                }),
            RaisedButton(
                child: Text("到列表1"),
                onPressed: () {
                  print("到列表1");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyLovePage()));
                }),

            RaisedButton(
                child: Text("到列表2"),
                onPressed: () {
                  print("到列表2");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DatePage()));
                }),


            RaisedButton(
                child: Text("时间 date 的使用"),
                onPressed: () {
                  print("到列表2");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DatePick()));
                }),

          ],
        ),
      ),
    );
  }
}
