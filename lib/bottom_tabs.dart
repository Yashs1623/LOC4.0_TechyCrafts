import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'constants/constants.dart';
import 'Screens/events_screen.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({Key? key}) : super(key: key);
  static const id = 'bottomTabs';
  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        items: [
          BottomNavyBarItem(
              icon: Icon(
                Icons.event,
                color: kthemecolor,
              ),
              title: Text('Events')),
          BottomNavyBarItem(
              icon: Icon(
                Icons.query_builder,
                color: kthemecolor,
              ),
              title: Text('Query')),
          BottomNavyBarItem(
              icon: Icon(
                Icons.location_city,
                color: kthemecolor,
              ),
              title: Text('Nearest NGO')),
          BottomNavyBarItem(
              icon: Icon(
                Icons.chat,
                color: kthemecolor,
              ),
              title: Text('ChatBot')),
        ],
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            EventScreen(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
