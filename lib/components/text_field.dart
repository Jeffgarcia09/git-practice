// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {


  final controller;
  final String hintText;
  final bool obscureText;
  final String title;

  const MyTextField({
  super.key,
  required this.title,
  required this.controller,
  required this.hintText,
  required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 45, 45, 45) ),),
          TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              hintText: hintText,hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 208, 208, 208)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              fillColor: Color.fromARGB(255, 255, 255, 255),
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}
