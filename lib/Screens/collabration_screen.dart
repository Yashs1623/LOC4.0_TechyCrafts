import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'collab_form.dart';
import 'package:url_launcher/url_launcher.dart';

class Collaboration extends StatefulWidget {
  const Collaboration({Key? key}) : super(key: key);

  @override
  _CollaborationState createState() => _CollaborationState();
}

class _CollaborationState extends State<Collaboration> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> items = [
    Container(
      margin: EdgeInsets.all(12.0),
      decoration: new BoxDecoration(
          color: Color(0xFFF5F6F9),
          borderRadius: new BorderRadius.all(Radius.circular(30.0))),
      height: 200,
      width: 125,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    'Organization name:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: kthemecolor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Smile Foundation',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              children: [
                Text(
                  'Address:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: kthemecolor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Mumbai,Maharastra',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                )
              ],
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              children: [
                Text(
                  'Required things:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: kthemecolor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Clothes',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                )
              ],
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              children: [
                Text(
                  'Things that can be provided:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: kthemecolor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Volunteers',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                )
              ],
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              children: [
                Text(
                  'Contact no:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: kthemecolor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' 9456325871',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 10.0,
                ),
                TextButton(
                  onPressed: () {
                    launch('+919769374806');
                  },
                  child: Text(
                    'Contact NGO',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(backgroundColor: kthemecolor),
                )
              ],
            )
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Collaborate'),
        backgroundColor: kthemecolor,
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}
