import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

class SplashScreenButton extends StatelessWidget {
 
  String text;

  SplashScreenButton({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 15)),),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(35),




        ),

      ),
    );
  }
}
