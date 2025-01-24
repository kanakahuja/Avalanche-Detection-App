import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('lib/animations/persons.json',width: 300,height: 200,repeat: true),
              Text("Are you planning a trip to Mountains",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}
