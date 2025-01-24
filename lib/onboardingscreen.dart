import 'package:flutter/material.dart';
import 'package:hackathon_project/home_page.dart';
import 'package:hackathon_project/intro_screens/intro_page1.dart';
import 'package:hackathon_project/intro_screens/intro_page2.dart';
import 'package:hackathon_project/intro_screens/intro_page3.dart';
import 'package:hackathon_project/location_permission.dart';
import 'package:hackathon_project/reusables/splash_screen_button.dart';
import 'package:hackathon_project/theme/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'locationtesting.dart';

class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
          onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });

          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),

          ],
        ),
          Container(
            alignment: Alignment(0,0.8),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // GestureDetector(
                    //   onTap: (){
                    //     _controller.jumpToPage(2);
                    //   },
                    //     child: Text("Skip")
                    // ),
                    SmoothPageIndicator(controller: _controller, count: 3,effect: ExpandingDotsEffect(dotHeight: 10,dotWidth: 10,activeDotColor: primaryColor)),
                    onLastPage ?
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LocationTesting(),));
                        },
                        child: SplashScreenButton(text: "Done",)
                    ) : GestureDetector(
                        onTap: (){
                          _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                        },
                        child: SplashScreenButton(text: "Next",)
                    )
                  ],
                ),
              )
          )

        ],
      ),
    );
  }
}
