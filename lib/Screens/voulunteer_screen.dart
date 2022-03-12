import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:loc/Screens/MoreVolunteerDetails.dart';
import 'package:loc/api_models/getEvents_model.dart';
import 'package:loc/constants/constants.dart';
import 'package:http/http.dart' as http;

class VolunteerScreen extends StatefulWidget {
  const VolunteerScreen({Key? key}) : super(key: key);

  @override
  State<VolunteerScreen> createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  // Future<http.Response> getEvents() {
  //   return http.get(
  //     Uri.parse('https://locbackend.herokuapp.com/getEvents'),
  //   );

  // }
  late Future<List<dynamic>?> _events;
  //  Future getEvents() async {
  //   final response = await http.get(
  //     Uri.parse('https://locbackend.herokuapp.com/getEvents'),
  //     headers: <String, String>{
  //       'Authorization':
  //           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyMmM5ZWFmZDZkMWQwYmM4ZDdkOWUxMiIsImlhdCI6MTY0NzA5MTM3NSwiZXhwIjoxNjc4NjI3Mzc1fQ.10XgYHrTjNWE_jjxGXgLfrUSbKUGrcY1WCIh0ZQCnKg',
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     // print("yash");
  //     print(jsonDecode(response.body));
  //     // upcomingEvents = await jsonDecode(response.body);
  //     // print(upcomingEvents);
  //     // return upcomingEvents;
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load getEvents');
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState

    _events = GetEvents().getEvents();
    super.initState();
    // print(e);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 10),
            child: Text(
              'Volunteer in this upcoming events!',
              style: TextStyle(
                  color: kthemecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: FutureBuilder(
              future: _events,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = (snapshot.data as List).toList();
                  print(data[0]);
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MoreVolunteerDetails(
                                eventName:data[index]['event_name'].toString(),
                                place:data[index]['place'].toString(),
                                description:data[index]['desc'].toString(),
                                volunteers_required:data[index]['volunteers_required'].toString(),
                                date:data[index]['date'].toString(),
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, right: 15.0, left: 15.0),
                          child: Container(
                            color: Color(0xFFF5F6F9),
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10.0),
                                  child: Text(
                                    "Event Name: " +
                                        data[index]['event_name'].toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10.0),
                                  child: Text(
                                    "Place: " + data[index]['place'].toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10.0),
                                  child: Text(
                                    "Description: " +
                                        data[index]['desc'].toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10.0),
                                  child: Text(
                                    "Volunteers Required: " +
                                        data[index]['volunteers_required']
                                            .toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10.0),
                                  child: Text(
                                    "Date: " +
                                        data[index]['date']
                                            .toString()
                                            .substring(0, 10),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
