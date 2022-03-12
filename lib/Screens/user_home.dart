import 'package:flutter/material.dart';
import 'package:loc/bottom_tabs.dart';
import 'package:loc/constants/constants.dart';
import 'voulunteer_screen.dart';
import 'fundraiser_screen.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Volunteers'),
              Tab(
                text: 'Fundraiser',
              ),
            ],
          ),
          title: Text('Events'),
        ),
        body: TabBarView(
          children: [VolunteerScreen(), FundraiserScreen()],
        ),
        bottomNavigationBar: BottomTabs(),
      ),
    );
  }
}
