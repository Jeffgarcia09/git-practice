import 'package:flutter/material.dart';
import 'package:motocode/Pages/scan_details.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('History', style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text('Item $index'),
              onTap: () {
                // Navigate to the details page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetailsPage(index: index),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}