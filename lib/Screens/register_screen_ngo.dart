import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:loc/roundbutton.dart';
import 'dart:convert';
import 'package:loc/api_models/login_model.dart';
import 'package:loc/bottom_tabs.dart';

class RegisterScreenNGO extends StatefulWidget {
  const RegisterScreenNGO({Key? key}) : super(key: key);

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

  String email = '';
  String password = '';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Lottie.asset('assets/lottie/paper.json', height: 250.0),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              controller: _emailController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                email = value;
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                password = value;
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundButton(
              text: 'Register',
              color: Colors.lightBlueAccent,
              onPressed: () async {
                var email = _emailController.text;
                var password = _passwordController.text;
                var token = await attemptSignUp(email, password);
                if (token != null) {
                  storage.write(key: "token", value: token.token);
                  String? tokens = await storage.read(key: "token");
                  print(tokens);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomTabs(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
