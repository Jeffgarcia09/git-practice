// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String qrResult;

  const ResultPage({Key? key, required this.qrResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> resultParts = qrResult.split(',');

    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Result'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('lib/Icons/qrcode.png', fit: BoxFit.cover),
                ),
                SizedBox(height: 15.0),
                Text(
                  resultParts[0],
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 149, 215, 1)),
                ),
                const Text(
                  'chassis',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(59, 59, 59, 1)),
                ),
                const SizedBox(height: 40),
                TextField(
                  readOnly: true,
                  controller: TextEditingController(
                      text: resultParts.length > 0 ? resultParts[0] : ''),
                  decoration: const InputDecoration(
                    labelText: 'Chassis Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(width: 20.0, height: 20.0),
                TextField(
                  readOnly: true,
                  controller: TextEditingController(
                      text: resultParts.length > 1 ? resultParts[1] : ''),
                  decoration: InputDecoration(
                    labelText: 'Engine Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(width: 20.0, height: 20.0),
                TextField(
                  readOnly: true,
                  controller: TextEditingController(
                      text: resultParts.length > 2 ? resultParts[2] : ''),
                  decoration: const InputDecoration(
                    labelText: 'Model',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(width: 20.0, height: 20.0),
                TextField(
                  readOnly: true,
                  controller: TextEditingController(
                      text: resultParts.length > 3 ? resultParts[3] : ''),
                  decoration: const InputDecoration(
                    labelText: 'Manufacturing Date',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(width: 20.0, height: 20.0),
                TextField(
                  readOnly: true,
                  controller: TextEditingController(
                      text: resultParts.length > 4 ? resultParts[4] : ''),
                  decoration: const InputDecoration(
                    labelText: 'Color',
                    border: OutlineInputBorder(),
                  ),
                ),
                // Repeat the pattern for other fields...
                SizedBox(width: 20.0, height: 20.0),
                TextField(
                  readOnly: true,
                  controller: TextEditingController(
                      text: resultParts.length > 5 ? resultParts[5] : ''),
                  decoration: const InputDecoration(
                    labelText: 'Batch Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(width: 20.0, height: 20.0),
                TextField(
                  readOnly: true,
                  controller: TextEditingController(
                      text: resultParts.length > 6 ? resultParts[6] : ''),
                  decoration: const InputDecoration(
                    labelText: 'Brand',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
