import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter First Name'),
              ),
            ),
            Expanded(
              child: TextField(
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter Last Name'),
              ),
            )
          ],
        )
      ],
    );
  }
}
