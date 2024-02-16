 import 'package:flutter/material.dart';


class ItemDetailsPage extends StatelessWidget {
  final int index;

  const ItemDetailsPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Text('Details for Item $index'),
      ),
    );
  }
}