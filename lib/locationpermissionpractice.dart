import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'home_page.dart';

Future<HomePage?> getPermission() async {
  LocationPermission permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.whileInUse) {
    Position position = await Geolocator.getCurrentPosition();
    // Get the user's latitude and longitude.

    double latitude = position.latitude;
    double longitude = position.longitude;

    // Print the user's latitude and longitude.
    print('Latitude: $latitude');
    print('Longitude: $longitude');
    // return HomePage();






  }
  else if(permission == LocationPermission.always){
    Position position = await Geolocator.getCurrentPosition();

    // Get the user's latitude and longitude.
    double latitude = position.latitude;
    double longitude = position.longitude;

    // Print the user's latitude and longitude.
    print('Latitude: $latitude');
    print('Longitude: $longitude');
    // return HomePage();

  }
  else if(permission == LocationPermission.denied){
    Fluttertoast.showToast(
      msg: "to continue using app give location permission",
      toastLength: Toast.LENGTH_SHORT, // or Toast.LENGTH_LONG
      gravity: ToastGravity.BOTTOM, // You can set the toast position (TOP, CENTER, or BOTTOM)
      timeInSecForIosWeb: 3, // This controls the duration on iOS and web
      backgroundColor: Colors.black,
      textColor: Colors.white,
    );
    // SystemNavigator.pop();
  }
}