import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'fundraiser_form.dart';
import 'volunteer_form.dart';

class NGO_home extends StatefulWidget {
  NGO_home({required this.name});
  final String name;

  @override
  _NGO_homeState createState() => _NGO_homeState();
}

class _NGO_homeState extends State<NGO_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('DashBoard'),
        backgroundColor: kthemecolor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Welcome ${widget.name},',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24.0, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120.0,
          ),
          Text(
            'What do you want to do?',
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Fundform()));
                },
                child: Container(
                  decoration: new BoxDecoration(
                      color: kthemecolor,
                      borderRadius:
                          new BorderRadius.all(Radius.circular(30.0))),
                  height: 175.0,
                  width: 175.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.rupeeSign,
                        size: 100.0,
                      ),
                      Text(
                        'Start a Fundraiser',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Volunteerform()));
                },
                child: Container(
                  decoration: new BoxDecoration(
                      color: kthemecolor,
                      borderRadius:
                          new BorderRadius.all(Radius.circular(30.0))),
                  height: 175.0,
                  width: 175.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.event,
                        size: 100.0,
                      ),
                      Text(
                        'Upcoming events',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: new BoxDecoration(
                  color: kthemecolor,
                  borderRadius: new BorderRadius.all(Radius.circular(30.0))),
              height: 175.0,
              width: 175.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FontAwesomeIcons.handshake,
                    size: 100.0,
                    color: Colors.white,
                  ),
                  Text(
                    'Collaborate with other NGOs',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
