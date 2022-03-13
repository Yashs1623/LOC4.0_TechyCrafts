import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:lottie/lottie.dart';
import '../roundbutton.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'Splash';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  bool isNGO = false;
  bool isUser = true;
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

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
                Image.asset('assets/images/littlehope.jpeg', height: 450.0),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundButton(
              color: Colors.lightBlueAccent,
              text: 'Login as User',
              onPressed: (() {
                isNGO = false;
                isUser = true;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LoginScreen(isNGO: isNGO, isUser: isUser)));
              }),
            ),
            RoundButton(
              color: Colors.blueAccent,
              text: 'Login as NGO',
              onPressed: (() {
                isNGO = true;
                isUser = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => LoginScreen(
                          isNGO: isNGO,
                          isUser: isUser,
                        )),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
