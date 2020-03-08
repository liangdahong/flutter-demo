import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  void initState() {
    super.initState();
    // String jsonStr = "{'ccc' : 'a'}";
    // var map = json.decode(jsonStr);
    // print(map);


// map - > json
    json.encode("value");
    var map1 = {"name": "jack"};
    var json1 = json.encode(map1);
    print(json1);

    // json - > map
    String json2 = '{"name":"jack"}';
    Map map2 = json.decode(json2);
    print(map2);
    print(json2 is Map ? "json2 是 Map" : "json2不是 Map");
    print(map2 is Map ? "map2 是 Map" : "map2 不是 Map");
  }

  void _getData() async {
    var url = 'https://api.liangdahong.com';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print('Number of books about http: $jsonResponse');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    
    var response1 = await http.post(url, body: {});
    if (response1.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response1.body);
      print('Number of books about http: $jsonResponse');
    } else {
      print('Request failed with status: ${response1.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    // 这里返回组件
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text("获取数据"),
              onPressed: () {
                _getData();
              })
        ],
      ),
    );
  }
}
