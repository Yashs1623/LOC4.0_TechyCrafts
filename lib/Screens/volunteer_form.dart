import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:loc/roundbutton.dart';

class Volunteerform extends StatefulWidget {
  const Volunteerform({Key? key}) : super(key: key);

  @override
  _VolunteerformState createState() => _VolunteerformState();
}

class _VolunteerformState extends State<Volunteerform> {
  String name = '';
  String motive = '';
  int number = 0;
  String place = '';
  String date = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Volunteer Form'),
        backgroundColor: kthemecolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your Name'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                name = value;
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter Place of event'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                place = value;
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter No of volunteers required'),
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black),
              onChanged: (dynamic value) {
                number = value;
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Explain about the Motive of the Event'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                motive = value;
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter The Date of Event'),
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.datetime,
              onChanged: (value) {
                date = value;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            RoundButton(color: kthemecolor, text: 'Submit', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
