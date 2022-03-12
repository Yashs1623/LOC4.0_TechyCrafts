import 'package:flutter/material.dart';

class TokenModel {
  final String token;

  const TokenModel({required this.token});

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(token: json['token']);
  }
}
