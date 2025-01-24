import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_project/Pages/page2.dart';
import 'package:hackathon_project/Pages/page3.dart';
import 'package:hackathon_project/theme/color.dart';


import 'Pages/HomePageContent.dart';
import 'Pages/page1.dart';
import 'Pages/page2temp.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key,}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    HomePageContent(),
    page2(),
    page3(),
  ];

  void navigateBottomBar(int index) {
    setState(() {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => pages[index],));
      _selectedIndex = index;
      print(index);
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        onTap: navigateBottomBar,

        backgroundColor: backgroundColor,
        color: Colors.grey.shade300,
        animationDuration: Duration(milliseconds: 200),
// color: secondaryColor,
// buttonBackgroundColor: primaryColor,
        items: [
          Icon(CupertinoIcons.home, size: 25),
          Icon(CupertinoIcons.book, size: 25),
          Icon(CupertinoIcons.settings, size: 25),
        ],
      ),
      body: pages[_selectedIndex],


    );
  }
}

