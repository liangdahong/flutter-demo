import 'package:flutter/material.dart';

import './DatePage.dart';
import './MyLovePage.dart';
import './SearchPage.dart';

// container 组件
// Text 组件
class HomePage extends StatelessWidget {
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
          ],
        ),
      ),
    );
  }
}
