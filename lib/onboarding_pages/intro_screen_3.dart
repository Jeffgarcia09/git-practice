// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'lib/Icons/sale.gif', // Replace with the path to your image
              width: 300, // Set width as per your requirement
              height: 300, // Set height as per your requirement
            ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30.0),
                child: Text(
                  'A serendipitous encounter unfolded between two quixotic souls. Their conversation.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
