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
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       //  Container容器组件
//       child: Container(
//         child: Text(
//           "ContainerContainerContainerContair",
//           textAlign: TextAlign.right,
//           textScaleFactor: 2.0,
//           maxLines: 1,
//           // 方向
//           textDirection: TextDirection.rtl,
//           overflow: TextOverflow.ellipsis,
//           // 样式
//           style: TextStyle(
//             fontSize: 33,
//             fontWeight: FontWeight.w700,
//             fontStyle: FontStyle.italic,
//             // 装饰
//             decoration: TextDecoration.lineThrough,
//             decorationColor: Colors.blue,
//           ),
//         ),
//         height: 300.0,
//         width: 300.0,
//         // padding: EdgeInsets.all(10),
//         padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
//         // transform: Matrix4.translationValues(10, 0, 0),
//         // transform: Matrix4.rotationZ(20),
//         alignment: Alignment.bottomRight,
        
//         decoration: BoxDecoration(
//             color: Colors.yellow,
//             borderRadius: BorderRadius.all(Radius.circular(20)),
//             border: Border.all(
//               color: Colors.red,
//               width: 5.0,
//               style: BorderStyle.solid,
//             )),
//       ),
//     );
//   }
// }
