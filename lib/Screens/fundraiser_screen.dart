import 'package:flutter/material.dart';
import 'package:loc/api_models/getFundRaise_model.dart';
import 'package:loc/constants/constants.dart';
import 'package:loc/roundbutton.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


class FundraiserScreen extends StatefulWidget {
  const FundraiserScreen({Key? key}) : super(key: key);

  @override
  State<FundraiserScreen> createState() => _FundraiserScreenState();
}

class _FundraiserScreenState extends State<FundraiserScreen> {
  late Future<List<dynamic>?> _fundRaise;
  late Razorpay razorpay;
  // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  @override
  void initState() {
    // TODO: implement initState
    _fundRaise = GetFundRaise().getFundRaise();
    razorpay = new Razorpay();
    super.initState();
    // print(e);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 10),
            child: Text(
              'Please donate to help our cause !',
              style: TextStyle(
                  color: kthemecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: FutureBuilder(
              future: _fundRaise,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = (snapshot.data as List).toList();
                  print(data);
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, right: 15.0, left: 15.0),
                        child: Container(
                          color: Color(0xFFF5F6F9),
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10.0),
                                child: Text(
                                  "Title: " +
                                      data[index]['title'].toString(),
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10.0),
                                child: Text(
                                  "Organization Name: " + data[index]['org_name'].toString(),
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10.0),
                                child: Text(
                                  "Price: " +
                                      data[index]['price'].toString(),
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10.0),
                                child: Text(
                                  "Date: " +
                                      data[index]['date']
                                          .toString()
                                          .substring(0, 10),
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              RoundButton(color: kthemecolor, text: "Pay Now", onPressed: (){print('yash');})
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
