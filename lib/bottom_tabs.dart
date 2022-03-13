import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:loc/Screens/fundraiser_screen.dart';
import 'package:loc/Screens/volunteer_screen.dart';
import 'constants/constants.dart';
import 'Screens/chatbot.dart';
import 'Screens/map_screen.dart';

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
        backgroundColor: Colors.white,
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.event,
              color: kthemecolor,
            ),
            title: Text('Volunteering'),
          ),
          BottomNavyBarItem(
              icon: Icon(
                Icons.query_builder,
                color: kthemecolor,
              ),
              title: Text('Fundraising')),
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
            VolunteerScreen(),
            FundraiserScreen(),
            Maps_Screen(),
            ChatBot(),
          ],
        ),
      ),
    );
  }
}
