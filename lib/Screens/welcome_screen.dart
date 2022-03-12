import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:lottie/lottie.dart';
import '../roundbutton.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'Splash';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isNGO = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: [
                //Lottie.asset('assets/lottie/paper.json', height: 450.0),
                const Text(
                  'APPNAME',
                  style: TextStyle(fontSize: 45.0, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundButton(
              color: Colors.lightBlueAccent,
              text: 'Login as User',
              onPressed: (() {
                Navigator.pushNamed(context, LoginScreen.id);
              }),
            ),
            RoundButton(
              color: Colors.blueAccent,
              text: 'Login as NGO',
              onPressed: (() {
                isNGO = true;
                Navigator.pushNamed(context, LoginScreen.id);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
