import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  String tag = "默认";

  SearchPage({this.tag});
  
  @override
  _SearchPageState createState() => _SearchPageState(tag);
}

class _SearchPageState extends State<SearchPage> {
String tag = "";

_SearchPageState(this.tag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        title: Text(tag),
      ),
      // 内容
      body: Container(
        child: Text("传过来的数据是 $tag"),
      ),
    );
  }
}