import 'dart:convert';
import 'user_home.dart';
import 'package:flutter/material.dart';
import 'package:loc/api_models/login_model.dart';
import 'package:loc/bottom_tabs.dart';
import 'package:lottie/lottie.dart';
import '../roundbutton.dart';
import '../constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RegisterationScreenUser extends StatefulWidget {
  RegisterationScreenUser({required this.isNGO, required this.isUser});
  static const String id = 'RegisterUser';
  final bool isNGO;
  final bool isUser;

  @override
  State<RegisterationScreenUser> createState() =>
      _RegisterationScreenUserState();
}

class _RegisterationScreenUserState extends State<RegisterationScreenUser> {
  static const SERVER_IP = 'http://192.168.1.4:3000';
  Future<TokenModel?> attemptSignUp(String email, String password) async {
    var res = await http.post(
      Uri.parse("http://localhost:3000/signup"),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{"email": email, 'password': password}),
    );
    if (res.statusCode == 201) {
      // print(jsonDecode(res.body));
      return TokenModel.fromJson(jsonDecode(res.body));
    } else {
      print(res.reasonPhrase);
    }
    return null;
  }

  final storage = const FlutterSecureStorage();

  String name = '';
  String email = '';
  String password = '';
  String confirmpass = '';
  String contactno = '';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Lottie.asset('assets/lottie/login.json', height: 150.0),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                name = value;
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter full name'),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _emailController,
              textAlign: TextAlign.left,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter email'),
              onChanged: (value) {
                email = value;
                //Do something with user input
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _passwordController,
              textAlign: TextAlign.left,
              obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Password'),
              onChanged: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              textAlign: TextAlign.left,
              obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Confirm Password'),
              onChanged: (value) {
                confirmpass = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black),
              decoration: kTextFieldDecoration.copyWith(hintText: 'Contact no'),
              onChanged: (value) {
                contactno = value;
              },
            ),
            RoundButton(
                text: 'Register',
                color: Colors.lightBlueAccent,
                onPressed: () {
                  // var email = _emailController.text;
                  // var password = _passwordController.text;
                  // var token = await attemptSignUp(email, password);
                  // if (token != null) {
                  //   storage.write(key: "token", value: token.token);
                  //   String? tokens = await storage.read(key: "token");
                  //   print(tokens);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserHome(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
