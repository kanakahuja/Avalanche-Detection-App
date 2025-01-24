import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_project/Pages/page1.dart';
import 'package:hackathon_project/Pages/page2.dart';
import 'package:hackathon_project/Pages/page3.dart';
import 'package:hackathon_project/reusables/my_button.dart';
import 'package:hackathon_project/theme/color.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../locationtesting.dart';



class HomePageContent extends StatefulWidget {
  HomePageContent(
      {Key? key,}) : super(key: key);

  // late double latititudeFromLocationScreen;
  // late double longitudeFromLocationScreen;

  @override
  State<HomePageContent> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageContent> {
  // String latitudeforurl = latititudeFromLocationScreen.toString();
  var data;

  Future<void> fetchData() async {
    final locationProvider = Provider.of<LocationProvider>(context, listen: false);
    final latitude = locationProvider.latitude;
    final longitude = locationProvider.longitude;
    final response = await http.get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=${latitude}&longitude=${longitude}&hourly=temperature_2m,relativehumidity_2m,snowfall,cloudcover_mid,windspeed_10m,windspeed_120m,winddirection_10m,winddirection_120m'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      print(data);
      sendToAnotherServer(data);
    } else {}
  }

  Future<void> sendToAnotherServer(dynamic postData) async {
    final Uri url = Uri.parse(
        'https://your-other-server.com/api/endpoint'); // Replace with the URL of your other server

    // Encode the data as a JSON string
    String jsonBody = jsonEncode(postData);

    // Send a POST request with the data to the other server
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json', // Set the content type to JSON
      },
      body: jsonBody,
    );

    if (response.statusCode == 200) {
      print('Data sent to another server successfully.');
    } else {
      print('Failed to send data to another server.');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Consumer<LocationProvider>(
      builder: (context, locationProvider, child) {
        final latitude = locationProvider.latitude;
        final longitude = locationProvider.longitude;

        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            title: Text("Avalanche Prediction App"),
            centerTitle: true,
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

// mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Latitude",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('$latitude',
                          style: TextStyle(color: Colors.white70),
                        )
                      ],
                    )),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Longitude",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '$longitude',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                    onTap: () {
                      const link =
                          "https://the-avyakta.github.io/avalanche-flask/map.html";

                      launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
                    },
                    child: MyButton(
                      height: 60,
                      width: double.infinity,
                      text: "Open In Maps",
                    )),
              ),
// MaterialButton(
//   onPressed: () async {
//     Uri url = Uri.parse("https://the-avyakta.github.io/avalanche-flask/map.html");
//     if (await canLaunchUrl(url)) {
//       await launchUrl(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   },
//   child: Text('Open Web Page'),
// ),
// Text("latitude"+ latititudeFromLocationScreen.toString()),
// Text("longitude"+ longitudeFromLocationScreen.toString()),
            ],
          ),
        );
      },
    );
  }
}
