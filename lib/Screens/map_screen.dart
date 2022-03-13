import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:loc/constants/constants.dart';

class Maps_Screen extends StatefulWidget {
  double latitude = 00.0000;
  double longitude = 00.000;

  @override
  State<Maps_Screen> createState() => _Maps_ScreenState();
}

class _Maps_ScreenState extends State<Maps_Screen> {
  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  getLocation() {
    var response = http.get(Uri.parse(
        'https://www.googleapis.com/geolocation/v1/geolocate?key={$kgoogleapikey}'));
    print(response);
  }

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearest NGOs'),
        backgroundColor: kthemecolor,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition:
            CameraPosition(target: LatLng(19.076090, 72.877426), zoom: 11.0),
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        //zoomControlsEnabled: true,
        mapType: MapType.normal,
        markers: {
          const Marker(
            markerId: MarkerId('Vivekanand Youth Forum'),
            position: LatLng(19.114424, 72.867943),
          ),
          const Marker(
              markerId: MarkerId('Rural Development Trust'),
              position: LatLng(19.155001, 72.849998)),
          const Marker(
              markerId: MarkerId('Snehankit Helpline'),
              position: LatLng(19.158851, 72.676718)),
          const Marker(
              markerId: MarkerId('Hello'),
              position: LatLng(19.102512, 72.845367)),
          const Marker(
              markerId: MarkerId('Hi'), position: LatLng(19.136326, 72.827660)),
          const Marker(
              markerId: MarkerId('Ola'),
              position: LatLng(19.217907, 72.847084)),
        },
      ),
    );
  }
}
