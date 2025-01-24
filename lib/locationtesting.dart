import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hackathon_project/reusables/my_button.dart';
import 'package:lottie/lottie.dart';
import 'Pages/HomePageContent.dart';
import 'home_page.dart';
import 'package:provider/provider.dart';


class LocationProvider extends ChangeNotifier {
  double _latitude = 0.0;
  double _longitude = 0.0;

  double get latitude => _latitude;
  double get longitude => _longitude;

  set latitude(double latitude) {
    _latitude = latitude;
    notifyListeners();
  }

  set longitude(double longitude) {
    _longitude = longitude;
    notifyListeners();
  }
}

class LocationTesting extends StatefulWidget {
   LocationTesting({Key? key}) : super(key: key);

  @override
  State<LocationTesting> createState() => _LocationTestingState();
}

class _LocationTestingState extends State<LocationTesting> {
   // LocationProvider locationProvider = Provider.of<LocationProvider>(context);
   late LocationProvider locationProvider;


   @override
  Widget build(BuildContext context) {
     locationProvider = Provider.of<LocationProvider>(context);

     return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
                child:Lottie.asset('lib/animations/3.json',repeat: true),

            ),
          ),
          SizedBox(height: 15,),
          Text("to use app services we need location access"),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: ()async{
              LocationPermission permission = await Geolocator.requestPermission();

              if (permission == LocationPermission.whileInUse) {
                Position position = await Geolocator.getCurrentPosition();
                // Get the user's latitude and longitude.

                double latitude = position.latitude;
                double longitude = position.longitude;

                locationProvider.latitude = latitude;
                locationProvider.longitude = longitude;

                // Print the user's latitude and longitude.
                print('Latitude: $latitude');
                print('Longitude: $longitude');
                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(latititudeFromLocationScreen: latitude,longitudeFromLocationScreen: longitude),));
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));

              }
              else if(permission == LocationPermission.always){
                Position position = await Geolocator.getCurrentPosition();

                // Get the user's latitude and longitude.
                double latitude = position.latitude;
                double longitude = position.longitude;

                locationProvider.latitude = latitude;
                locationProvider.longitude = longitude;

                // Print the user's latitude and longitude.
                print('Latitude: $latitude');
                print('Longitude: $longitude');
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));

                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(longitudeFromLocationScreen: longitude,latititudeFromLocationScreen: latitude),));

              }
              else if(permission == LocationPermission.denied){
                Fluttertoast.showToast(
                  msg: "To continue using app give location permission",
                  toastLength: Toast.LENGTH_SHORT, // or Toast.LENGTH_LONG
                  gravity: ToastGravity.BOTTOM, // You can set the toast position (TOP, CENTER, or BOTTOM)
                  timeInSecForIosWeb: 3, // This controls the duration on iOS and web
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                );
                SystemNavigator.pop();
              }
            },
              child: MyButton(height:50,width: double.infinity,text: "Grant Location access",)),

          // ElevatedButton(
          //   child: Text("give location access"),
          //   onPressed: () async
          //   {
          //     LocationPermission permission = await Geolocator.requestPermission();
          //
          //     if (permission == LocationPermission.whileInUse) {
          //       Position position = await Geolocator.getCurrentPosition();
          //       // Get the user's latitude and longitude.
          //
          //       double latitude = position.latitude;
          //       double longitude = position.longitude;
          //
          //       // Print the user's latitude and longitude.
          //       print('Latitude: $latitude');
          //       print('Longitude: $longitude');
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(latititudeFromLocationScreen: latitude,longitudeFromLocationScreen: longitude),));
          //
          //     }
          //     else if(permission == LocationPermission.always){
          //       Position position = await Geolocator.getCurrentPosition();
          //
          //       // Get the user's latitude and longitude.
          //       double latitude = position.latitude;
          //       double longitude = position.longitude;
          //
          //       // Print the user's latitude and longitude.
          //       print('Latitude: $latitude');
          //       print('Longitude: $longitude');
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(longitudeFromLocationScreen: longitude,latititudeFromLocationScreen: latitude),));
          //
          //     }
          //     else if(permission == LocationPermission.denied){
          //       Fluttertoast.showToast(
          //         msg: "to continue using app give location permission",
          //         toastLength: Toast.LENGTH_SHORT, // or Toast.LENGTH_LONG
          //         gravity: ToastGravity.BOTTOM, // You can set the toast position (TOP, CENTER, or BOTTOM)
          //         timeInSecForIosWeb: 3, // This controls the duration on iOS and web
          //         backgroundColor: Colors.black,
          //         textColor: Colors.white,
          //       );
          //       SystemNavigator.pop();
          //     }
          //   },
          // ),

        ],
      )

    );
  }
}
