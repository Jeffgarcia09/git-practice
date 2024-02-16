// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: Text(
                  'M O T O C O D E',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[400]),
                ),
              ),
              Text(
                'Scan, Track, and Relax.',
                style: TextStyle(fontSize: 14, color: Colors.blue[400]),
              ),
              Text(
                'Moto Code Have Your Back.',
                style: TextStyle(fontSize: 14, color: Colors.blue[400]),
              ),
              SizedBox(height: 20),
            Image.asset(
              'lib/Icons/track.gif',
              // Replace with the path to your image
              width: 300, // Set width as per your requirement
              height: 300,
              fit: BoxFit.fill, // Set height as per your requirement
            ),
            ],
          ),
        ),
      );
  }
}