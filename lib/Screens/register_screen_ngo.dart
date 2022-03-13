import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:loc/roundbutton.dart';
import 'dart:convert';
import 'package:loc/api_models/login_model.dart';
import 'package:loc/bottom_tabs.dart';
import 'NGO_home.dart';
import 'package:lottie/lottie.dart';

class RegisterScreenNGO extends StatefulWidget {
  RegisterScreenNGO({required this.isNGO, required this.isUser});
  static const String id = 'RegisterNGO';
  final bool isUser;
  final bool isNGO;

  @override
  State<RegisterScreenNGO> createState() => _RegisterScreenNGOState();
}

class _RegisterScreenNGOState extends State<RegisterScreenNGO> {
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
  String address = '';
  String name = '';
  String email = '';
  String password = '';
  String confirmpass = '';
  String regno = '';
  String phoneno = '';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Lottie.asset('assets/lottie/login.json', height: 150.0),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter Organization Name'),
              textAlign: TextAlign.left,
              onChanged: (value) {
                name = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Address'),
              textAlign: TextAlign.left,
              onChanged: (value) {
                address = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Registration No'),
              textAlign: TextAlign.left,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                regno = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Email'),
              textAlign: TextAlign.left,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Password'),
              textAlign: TextAlign.left,
              obscureText: true,
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
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.phone,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Contact info'),
              onChanged: (value) {
                phoneno = value;
              },
            ),
            RoundButton(
                text: 'Register',
                color: Colors.lightBlueAccent,
                onPressed: () async {
                  // var email = _emailController.text;
                  // var password = _passwordController.text;
                  // var token = await attemptSignUp(email, password);
                  // if (token != null) {}
                  //   storage.write(key: "token", value: token.token);
                  //   String? tokens = await storage.read(key: "token");
                  //   print(tokens);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NGO_home(
                        name: name,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
