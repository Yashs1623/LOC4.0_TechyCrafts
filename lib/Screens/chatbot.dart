import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';
import '../constants/constants.dart';
import 'package:loc/roundbutton.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  void buildConversation() {
    dynamic conversationObject = {'appId': kappID};

    KommunicateFlutterPlugin.buildConversation(conversationObject)
        .then((result) {
      print("Conversation builder success : " + result.toString());
    }).catchError((error) {
      print("Conversation builder error occurred : " + error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RoundButton(
                color: kthemecolor,
                text: 'Start Conversation',
                onPressed: () {
                  buildConversation();
                }),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Want to know more about us? Chat with Hope',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
