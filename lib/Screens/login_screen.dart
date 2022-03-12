import 'dart:convert';
import 'package:loc/Screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:loc/api_models/login_model.dart';
import 'package:loc/bottom_tabs.dart';
import 'package:loc/roundbutton.dart';
import 'package:lottie/lottie.dart';
import '../constants/constants.dart';
import 'package:http/http.dart' as http;
//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'register_screen_ngo.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({required this.isNGO, required this.isUser});
  static const id = 'Login';
  final bool isNGO;
  final bool isUser;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const SERVER_IP = 'http://localhost:3000';
  Future<TokenModel?> attemptLogIn(String email, String password) async {
    print(email + "  " + password);
    var res = await http.post(Uri.parse("http://localhost:3000/login"),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body:
            jsonEncode(<String, String>{"email": email, "password": password}));
    // print(res.statusCode);
    if (res.statusCode == 201) {
      // print(jsonDecode(res.body));
      return TokenModel.fromJson(jsonDecode(res.body));
    } else {
      print(res.reasonPhrase);
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
  }

  //final storage = const FlutterSecureStorage();
  String email = '';
  String password = '';

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
              text: 'Login',
              color: Colors.lightBlueAccent,
              onPressed: () {
                // var email = _emailController.text;
                // var password = _passwordController.text;

                // var token = await attemptLogIn(email, password);
                // if (token != null) {}
                // storage.write(key: "token", value: token.token);
                // String? tokens = await storage.read(key: "token");
                // print(tokens);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomTabs(),
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?  ',
                  style: TextStyle(color: Colors.black),
                ),
                InkWell(
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: kthemecolor),
                  ),
                  onTap: () {
                    if (widget.isUser)
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterationScreenUser(
                                  isNGO: widget.isNGO, isUser: widget.isUser)));
                    else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreenNGO(
                                    isNGO: widget.isNGO,
                                    isUser: widget.isUser,
                                  )));
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
