import 'package:flutter/material.dart';

class MoreVolunteerDetails extends StatefulWidget {
  MoreVolunteerDetails({required this.eventName, required this.place, required this.description, required this.volunteers_required, required this.date});
  final String eventName;
  final String place;
  final String description;
  final String volunteers_required;
  final String date;
  @override
  State<MoreVolunteerDetails> createState() => _MoreVolunteerDetailsState();
}

class _MoreVolunteerDetailsState extends State<MoreVolunteerDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('assets/images/beach.jpg')
        ],
      ),
    );
  }
}