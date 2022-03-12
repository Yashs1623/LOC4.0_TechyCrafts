import 'package:flutter/material.dart';
import 'package:loc/bottom_tabs.dart';
import 'package:loc/Screens/login_screen.dart';
import 'package:loc/providers/data.dart';
import 'package:loc/Screens/welcome_screen.dart';
import 'Screens/splash_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(const LOCApp());
}

class LOCApp extends StatelessWidget {
  const LOCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (BuildContext context) => Data(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          initialRoute: SplashScreen.id,
          routes: {
            SplashScreen.id: (context) => SplashScreen(),
            WelcomeScreen.id: (context) => WelcomeScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            RegisterationScreenUser.id: (context) => RegisterationScreenUser(),
            BottomTabs.id: (context) => BottomTabs(),
          }),
    );
  }
}
