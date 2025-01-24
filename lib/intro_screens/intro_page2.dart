import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child:Lottie.asset('lib/animations/weather.json',repeat: true),

              ),
              Text("Don't forget to check \navalanche predictions ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}
