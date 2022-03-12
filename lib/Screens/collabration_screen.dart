import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';

class Collaboration extends StatefulWidget {
  const Collaboration({Key? key}) : super(key: key);

  @override
  _CollaborationState createState() => _CollaborationState();
}

class _CollaborationState extends State<Collaboration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kthemecolor,
      ),
    );
  }
}
