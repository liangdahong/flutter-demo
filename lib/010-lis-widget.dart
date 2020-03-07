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
  List<Widget> getData() {
    List<Widget> list = List();
    var count = 20;
    while (count-- > 0) {
      list.add(ListTile(
        title: Text(count.toString()),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getData(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// // container 组件
// // Text 组件
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // 这里返回组件
//     return MaterialApp(
//       home: Scaffold(
//         // appBar
//         appBar: AppBar(
//           title: Text("flutter title"),
//         ),
//         // 内容
//         body: HomeContent(),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   List<Widget> getData() {
//     return [
//       ListTile(
//         title: Text("001"),
//       ),
//       ListTile(
//         title: Text("002"),
//       ),
//       ListTile(
//         title: Text("003",
//         style: TextStyle(
//           color: Colors.red,
//           background: Paint(
//           )
//         ),
//         ),
//       ),
//       ListTile(
//         title: Text("004"),
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: getData(),
//     );
//   }
// }
