import 'package:flutter/material.dart';
import 'package:loc/constants/constants.dart';
import 'package:loc/roundbutton.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class MoreVolunteerDetails extends StatefulWidget {
  MoreVolunteerDetails(
      {required this.eventName,
      required this.place,
      required this.description,
      required this.volunteers_required,
      required this.date});
  final String eventName;
  final String place;
  final String description;
  final String volunteers_required;
  final String date;
  @override
  State<MoreVolunteerDetails> createState() => _MoreVolunteerDetailsState();
}

class _MoreVolunteerDetailsState extends State<MoreVolunteerDetails> {
  bool click = false;
  //   void showToast(String string){
  //   Fluttertoast.showToast(
  //       msg: "You have been registered.The NGO will contact you shortly",
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.TOP,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Color(0xFF0A0E21),
  //       textColor: Colors.black,
  //       fontSize: 16.0);
  // }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        children: [
          Image.asset('assets/images/beach.jpg'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.eventName,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: kthemecolor,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.description,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Place: ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  widget.place,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Volunteers Required: ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  widget.volunteers_required,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Date of action: ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  widget.date,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Center(
            child: RoundButton(
              color: kthemecolor,
              text: "Volunteer for this event",
              onPressed: () {
                // showToast('You have been registered.The NGO will contact you shortly.');
              },
            ),
          ),
          SizedBox(height: 30),
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
                'assets/images/beach1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/beach2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/beach3.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/beach4.jpg',
                fit: BoxFit.cover,
              ),
            ],

            /// Called whenever the page in the center of the viewport changes.
            // onPageChanged: (value) {
            //   print('Page changed: $value');
            // },

            /// Auto scroll interval.
            /// Do not auto scroll with null or 0.
            autoPlayInterval: 2000,

            /// Loops back to first slide.
            isLoop: true,
          ),
        ],
      ),
    );
  }
}
