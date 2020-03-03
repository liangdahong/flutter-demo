import 'package:flutter/material.dart';

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
    return ListView(
      padding: EdgeInsets.all(100),
      children: <Widget>[
        Image.network(
            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1583223969&di=2ea08352bc28b3849d6bf1fa6354668a&src=http://media-cdn.tripadvisor.com/media/photo-s/03/f8/81/70/tup-island.jpg"),
        Container(
          height: 30,
          child: Text("data"),
        ),
        Image.network(
            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1583223969&di=2ea08352bc28b3849d6bf1fa6354668a&src=http://media-cdn.tripadvisor.com/media/photo-s/03/f8/81/70/tup-island.jpg"),
        Image.network(
            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1583223969&di=2ea08352bc28b3849d6bf1fa6354668a&src=http://media-cdn.tripadvisor.com/media/photo-s/03/f8/81/70/tup-island.jpg"),
        Image.network(
            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1583223969&di=2ea08352bc28b3849d6bf1fa6354668a&src=http://media-cdn.tripadvisor.com/media/photo-s/03/f8/81/70/tup-island.jpg"),
        Image.network(
            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1583223969&di=2ea08352bc28b3849d6bf1fa6354668a&src=http://media-cdn.tripadvisor.com/media/photo-s/03/f8/81/70/tup-island.jpg"),
      ],
    );
  }
}
