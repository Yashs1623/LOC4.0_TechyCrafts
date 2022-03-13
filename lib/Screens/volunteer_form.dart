import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:loc/roundbutton.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Volunteerform extends StatefulWidget {
  const Volunteerform({Key? key}) : super(key: key);

  @override
  _VolunteerformState createState() => _VolunteerformState();
}

class _VolunteerformState extends State<Volunteerform> {
  String name = '';
  String motive = '';
  int number = 0;
  String place = '';
  String date = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Volunteer Form'),
        backgroundColor: kthemecolor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageSlideshow(
            /// Width of the [ImageSlideshow].
            width: double.infinity,

            /// Height of the [ImageSlideshow].
            height: 200,

            /// The page to show when first creating the [ImageSlideshow].
            initialPage: 0,

            /// The color to paint the indicator.
            indicatorColor: Colors.blue,

            /// The color to paint behind th indicator.
            indicatorBackgroundColor: Colors.grey,

            /// The widgets to display in the [ImageSlideshow].
            /// Add the sample image file into the images folder
            children: [
              Image.asset(
                'assets/images/beach_cleaning.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/blood_donation.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/vaccination.jpg',
                fit: BoxFit.cover,
              ),
            ],
            autoPlayInterval: 2000,

            isLoop: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your Name'),
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              name = value;
            },
          ),
          SizedBox(
            height: 16.0,
          ),
          TextField(
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter Place of event'),
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              place = value;
            },
          ),
          SizedBox(
            height: 16.0,
          ),
          TextField(
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter No of volunteers required'),
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black),
            onChanged: (dynamic value) {
              number = value;
            },
          ),
          SizedBox(
            height: 16.0,
          ),
          TextField(
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Explain about the Motive of the Event'),
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              motive = value;
            },
          ),
          SizedBox(
            height: 16.0,
          ),
          TextField(
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter The Date of Event'),
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.datetime,
            onChanged: (value) {
              date = value;
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          RoundButton(color: kthemecolor, text: 'Submit', onPressed: () {})
        ],
      ),
    );
  }
}
