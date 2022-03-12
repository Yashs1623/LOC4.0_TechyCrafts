import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:http/http.dart' as http;

class FundTiles extends StatefulWidget {
  FundTiles(
      {required this.amount,
      required this.desc,
      required this.title,
      required this.name,
      required this.date});
  final String title;
  final String desc;
  final String date;
  final String amount;
  final String name;
  @override
  _FundTilesState createState() => _FundTilesState();
}

class _FundTilesState extends State<FundTiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ongoing Fundraisers'),
        backgroundColor: kthemecolor,
      ),
    );
  }
}
