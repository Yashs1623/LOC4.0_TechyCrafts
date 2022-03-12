import 'package:flutter/material.dart';

class NGO_home extends StatefulWidget {
  const NGO_home({Key? key}) : super(key: key);

  @override
  _NGO_homeState createState() => _NGO_homeState();
}

class _NGO_homeState extends State<NGO_home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome Abhishek',
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        Row(
          children: [
            InkWell(
              child: Card(
                child: Text('Organize a fundraiser'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: Card(
                child: Text('Post for Volunteers'),
              ),
              onTap: () {},
            )
          ],
        ),
        InkWell(
          child: Card(
            child: Text('Collaborate with another NGO'),
          ),
          onTap: () {},
        )
      ],
    );
  }
}
