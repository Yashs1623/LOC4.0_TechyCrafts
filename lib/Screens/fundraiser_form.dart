import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc/constants/constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:loc/roundbutton.dart';
import 'fundraiser_tiles.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Fundform extends StatefulWidget {
  const Fundform({Key? key}) : super(key: key);

  @override
  _FundformState createState() => _FundformState();
}

class _FundformState extends State<Fundform> {
  // DateTime selectedDate = DateTime.now();
  String title = '';
  String org_name = '';
  String price = '';
  String date = '';
  String desc = '';
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    date = args.toString();
  }

  Future submitFundRaise(String title, String org_name,
      String price, String date, String desc) async {
    // print(email + "  " + password);

    var res = await http.post(
        Uri.parse("https://locbackend.herokuapp.com/fundRaise"),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "title": title,
          "org_name": org_name,
          "price": price,
          "date": date,
          "desc": desc
        }));
    print(res.statusCode);
    if (res.statusCode == 201) {
      print(jsonDecode(res.body));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FundTiles(title:title, org_name:org_name, price:price, date: date, desc: desc),
        ),
      );
    } else {
      print(res.reasonPhrase);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var dateValue = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Fundraiser Info'),
        backgroundColor: kthemecolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: kTextFieldDecoration.copyWith(hintText: 'Title'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Name of Organization'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                org_name = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Amount Required'),
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                price = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(hintText: 'Date'),
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.datetime,
              onChanged: (value) {
                date = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Description'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                desc = value;
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            RoundButton(
                color: kthemecolor,
                text: 'Submit',
                onPressed: () {
                 submitFundRaise(title, org_name, price, date, desc);
                }),
          ],
        ),
      ),
    );
  }
}
// SfDateRangePicker(
// backgroundColor: kthemecolor,
// view: DateRangePickerView.year,
// monthViewSettings:
// DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
// onSelectionChanged: _onSelectionChanged,
// selectionMode: DateRangePickerSelectionMode.range,
// )
