import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  String token = '';

  void changeToken(String newToken) {
    token = newToken;
    notifyListeners();
  }
}
