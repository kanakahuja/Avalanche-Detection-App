import 'package:flutter/material.dart';
import 'package:hackathon_project/location_permission.dart';
import 'package:hackathon_project/onboardingscreen.dart';
import 'package:hackathon_project/theme/color.dart';
import 'package:provider/provider.dart';

import 'homemapspractise.dart';
import 'locationtesting.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => LocationProvider(),child: MyApp(),)

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:primaryColor),
        useMaterial3: true,
      ),
      home: OnBoardingScreen()
      // home: HomeMapsPractise(),
    );
  }
}

