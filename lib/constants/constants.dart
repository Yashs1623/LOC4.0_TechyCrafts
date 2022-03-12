import 'package:flutter/material.dart';

const InputDecoration kTextFieldDecoration = InputDecoration(
  fillColor: Colors.white,
  hintText: 'Enter Text',
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

Color kthemecolor = Color(0xff0950D5);
String kappID = '1c1a6fd899067751d2705a91dc035f561';
String kgoogleapikey = 'AIzaSyAO5wJYCk25xG-wJmNUA99ysLO-VBXg2Z8';
