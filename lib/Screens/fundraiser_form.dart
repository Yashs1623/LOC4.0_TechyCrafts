import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc/constants/constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:loc/roundbutton.dart';
import 'fundraiser_tiles.dart';

class Fundform extends StatefulWidget {
  const Fundform({Key? key}) : super(key: key);

  @override
  _FundformState createState() => _FundformState();
}

class _FundformState extends State<Fundform> {
  DateTime selectedDate = DateTime.now();
  String date = '';
  String name = '';
  String amount = '';
  String title = '';
  String desc = '';
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    date = args.toString();
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
                name = value;
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
                amount = value;
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FundTiles(
                              amount: amount,
                              desc: desc,
                              title: title,
                              name: name,
                              date: date)));
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
