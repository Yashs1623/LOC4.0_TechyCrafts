import 'package:flutter/material.dart';
import 'voulunteer_screen.dart';
import 'fundraiser_screen.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
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
          title: Text('TABS TITLE TEXT'),
        ),
        body: TabBarView(
          children: [VolunteerScreen(), FundraiserScreen()],
        ),
      ),
    );
  }
}
