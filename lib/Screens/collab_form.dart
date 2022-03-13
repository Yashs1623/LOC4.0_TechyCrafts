import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:loc/roundbutton.dart';
import 'collabration_screen.dart';
import 'package:lottie/lottie.dart';

class Colab_form extends StatefulWidget {
  const Colab_form({Key? key}) : super(key: key);

  @override
  _Colab_formState createState() => _Colab_formState();
}

class _Colab_formState extends State<Colab_form> {
  String name = '';
  String address = '';
  String required = '';
  String offered = '';
  String no = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kthemecolor,
        title: Text('Add an offer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/helpandsupport.json', height: 150),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Company Name'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                name = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(hintText: 'Address'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                address = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Required things'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                required = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Things which you can offer'),
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                offered = value;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(hintText: 'Contact no'),
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                no = value;
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            RoundButton(
                color: kthemecolor,
                text: 'Submit',
                onPressed: () {
                  setState(() {
                    Collaboration().createState().items.add(
                          Container(
                            margin: EdgeInsets.all(12.0),
                            decoration: new BoxDecoration(
                                color: Color(0xFFF5F6F9),
                                borderRadius: new BorderRadius.all(
                                    Radius.circular(30.0))),
                            height: 200,
                            width: 125,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Organization name:',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: kthemecolor,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          name,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Address:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: kthemecolor,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        address,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Required things:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: kthemecolor,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        required,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Things that can be provided:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: kthemecolor,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        offered,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Contact no:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: kthemecolor,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        no,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Contact NGO',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: TextButton.styleFrom(
                                            backgroundColor: kthemecolor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                  });

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Collaboration()));
                }),
          ],
        ),
      ),
    );
  }
}
