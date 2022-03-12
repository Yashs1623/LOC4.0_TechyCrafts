import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'constants/constants.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({Key? key}) : super(key: key);
  static const id = 'bottomTabs';
  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
              color: kthemecolor,
            ),
            label: 'Events'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.query_builder,
              color: kthemecolor,
            ),
            label: 'Query'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.location_city,
              color: kthemecolor,
            ),
            label: 'Nearest NGO'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: kthemecolor,
            ),
            label: 'ChatBot'),
      ]),
    );
  }
}
