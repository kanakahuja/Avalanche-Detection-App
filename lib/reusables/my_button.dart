import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

class MyButton extends StatelessWidget {
  double height;
  double width;
  String text;

   MyButton({Key? key,required this.height,required this.width,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 15)),),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
          



        ),

      ),
    );
  }
}
