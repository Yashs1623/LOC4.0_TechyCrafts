// class GetEvents {
//   final String id;
//   final String event_name;
//   final String place;
//   final String desc;
//   final String volunteers_required;
//   final String date;

//   const GetEvents({
//     required this.id,
//     required this.event_name,
//     required this.place,
//     required this.desc,
//     required this.volunteers_required,
//     required this.date
//   });

//   factory GetEvents.fromJson(Map<String, dynamic> json) {
//     return GetEvents(
//       id: json['_id'],
//       event_name: json['event_name'],
//       place: json['place'],
//       desc: json['desc'],
//       volunteers_required: json['volunteers_required'],
//       date: json['date'],
//     );
//   }
// }
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetEvents {
  Future<List<dynamic>?> getEvents() async {
    try {
      final response = await http.get(
        Uri.parse('https://locbackend.herokuapp.com/getEvents'),
        headers: <String, String>{
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyMmM5ZWFmZDZkMWQwYmM4ZDdkOWUxMiIsImlhdCI6MTY0NzA5MTM3NSwiZXhwIjoxNjc4NjI3Mzc1fQ.10XgYHrTjNWE_jjxGXgLfrUSbKUGrcY1WCIh0ZQCnKg',
        },
      );
      if (response.statusCode == 200) {
        var body = json.decode(response.body);
        return body;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
