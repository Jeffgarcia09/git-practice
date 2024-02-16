import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key, required this.onTap});

  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: EdgeInsets.all(18),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(color: Colors.blue,
      borderRadius: BorderRadius.circular(5)),
      child: 
      const Center(
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),),
    ),
    );
  }
}