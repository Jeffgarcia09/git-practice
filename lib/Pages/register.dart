// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:motocode/components/drp_btn.dart';
import 'package:motocode/components/login_btn.dart';
import 'package:motocode/components/text_field.dart';

class UserRegisteration extends StatelessWidget {
  UserRegisteration({super.key});

  // sign user in method
  void signUserIn( ) {
  }

  //text editing controller
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // const SizedBox(
                  //   height: 20.0,
                  // ),

                  //Title
                  const Column(
                    children: [
                      Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),

                      //subtitle
                      Text(
                        'Create a new account',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 181, 181, 181),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //textfields
                  MyTextField(
                    title: 'Firstname',
                    controller: firstnameController,
                    obscureText: false,
                    hintText: 'Input Firstname',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    title: 'Lastname',
                    controller: lastnameController,
                    obscureText: false,
                    hintText: 'Input Lastname',
                  ),
                  const SizedBox(
                    height: 10,
                    
                  ),
                  //dropdownfields
                  btnDropdown(
                    title: 'Business Unit',
                    items: const [
                      "Skygo",
                      "NIVI",
                      "Runner Supply Chain Solutions Inc.",
                      "SNDC",
                      "RECON MASTER",
                      "SMC",
                      "NMMC"
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  //dropdowntextfields
                  btnDropdown(
                    title: 'Department',
                    items: const [
                      "Management Services and logistics operations",
                      "Planning And Order Management",
                      "Spare Parts Department, CKD and MC Warehouse",
                      "Transport and Distribution - CENTRAL, TRI-WHEEL LOGISTICS",
                      "TRANSPORT AND DISTRIBUTION - BATAAN"
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //dropdowntextfields
                  btnDropdown(
                    title: 'Position',
                    items: const [
                      "Warehouse Supervisor",
                      "Stocks Handler - Packers",
                      "Inbound Checker",
                      "Inbound - Team Lead",
                      "Spare Parts Department Supervisor",
                      "Order Management Staff",
                      "Planning and Order Management Supervisor"
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  //dropdowntextfields
                  btnDropdown(
                    title: 'Branch',
                    items: const [
                      "Lapu-Lapu Branch",
                      "Hilongos Branch",
                      "Bansalan Branch",
                      "Surigao",
                      "La Union",
                      "Dipolog"
                    ],
                  ),

                  //save button
                  const SizedBox(
                    height: 50,
                  ),
                  LoginBtn(
                    onTap: signUserIn,
                  ),
                  //have an account? Login here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Already have an account?'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Login here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 30, 17, 214)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
