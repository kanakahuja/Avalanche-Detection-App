import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hackathon_project/home_page.dart';
import 'package:permission_handler/permission_handler.dart';
class LocationPermission extends StatelessWidget {
   LocationPermission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Permission Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var status = await Permission.location.request();
            if (status.isGranted) {
              // Location permission is granted, you can now use the location package to get the device's location.
              // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            } else {
              Fluttertoast.showToast(
                msg: "location permission denied",
                toastLength: Toast.LENGTH_SHORT, // or Toast.LENGTH_LONG
                gravity: ToastGravity.BOTTOM, // You can set the toast position (TOP, CENTER, or BOTTOM)
                timeInSecForIosWeb: 1, // This controls the duration on iOS and web
                backgroundColor: Colors.black,
                textColor: Colors.white,

              );

              // Location permission is denied.
              // SystemNavigator.pop();
            }
          },
          child: Text('Request Location Permission'),
        ),
      ),


    );
  }
}







