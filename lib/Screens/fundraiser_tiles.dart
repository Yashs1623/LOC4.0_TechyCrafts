import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:http/http.dart' as http;

class FundTiles extends StatefulWidget {
  final String title;
  final String org_name;
  final String price;
  final String date;
  final String desc;
  FundTiles(
      {required this.title,
      required this.org_name,
      required this.price,
      required this.date,
      required this.desc});
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
      body: Container(
        margin: EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
            color: Color(0xFFF5F6F9),
            borderRadius: new BorderRadius.all(Radius.circular(30.0))),
        height: 200,
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Title:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: kthemecolor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.title,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    'Organization Name',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: kthemecolor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.org_name,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text('Current Donation: ',
                      style: TextStyle(
                          color: kthemecolor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  Text('0 / 5000',
                      style: TextStyle(
                         color: Colors.black, fontSize: 20.0))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    'Description: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: kthemecolor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.desc,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    'Date',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: kthemecolor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.date,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
