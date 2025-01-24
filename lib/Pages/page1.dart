import 'package:flutter/material.dart';

import '../theme/color.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      body: Center(child: Text("page1"),),

    );
  }
}
