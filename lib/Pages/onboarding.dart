// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:motocode/Pages/register.dart';
import 'package:motocode/onboarding_pages/intro_screen_1.dart';
import 'package:motocode/onboarding_pages/intro_screen_2.dart';
import 'package:motocode/onboarding_pages/intro_screen_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //Controller for page
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (Index){
            setState(() {
              onLastPage = (Index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.9),
            child:
             onLastPage ?
                   Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserRegisteration()),
            );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(1000.0, 50),
                // You can customize the button style here
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),):
        
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                  //skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('Skip', style:TextStyle(fontSize: 18,color: Colors.blue[400]),),
                  ),

                  //dot indicator
                 SmoothPageIndicator(controller: _controller, count: 3,effect: ColorTransitionEffect(activeDotColor: Colors.blue,dotColor: Colors.grey,dotWidth: 10.0,dotHeight: 10.0,)),
                 //next
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Text('Next', style:TextStyle(fontSize: 18,color: Colors.blue[400])),
                  ),
                  

               ],
             ))

            

      
      
      ],
    ));
  }
}
