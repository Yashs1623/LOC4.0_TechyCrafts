import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;



class GetFundRaise{
   Future<List<dynamic>?> getFundRaise() async {
    try {
      final response = await http.get(
        Uri.parse('https://locbackend.herokuapp.com/getfundRaise'),
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