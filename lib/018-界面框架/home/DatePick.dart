import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePick extends StatefulWidget {
  @override
  _DatePickState createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  String selectDate = "请选择日期";

  _showDatePick(context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1960, 3),
            lastDate: DateTime(2050, 8))
        .then((date) {
      if (date != null) {
        print("选择的日期：$date");
      }
    });
  }

  _c_showDatePick(){
  }

  _async_showDatePick(context) async {
    var date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1960, 3),
        lastDate: DateTime(2050, 8));
    print(date);
    setState(() {
      selectDate = formatDate(date, [yyyy, "-", mm, "-", dd]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        title: Text("时间 pick"),
      ),
      // 内容
      body: Container(
        // width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("$selectDate"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: () {
                print("object");
                // this._showDatePick(context);
                this._async_showDatePick(context);
              },
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("第三方日期组件"),
                  Text("$selectDate"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: () {
                print("object");
                // this._showDatePick(context);
                this._async_showDatePick(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
