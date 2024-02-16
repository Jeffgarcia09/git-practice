import 'package:flutter/material.dart';

class btnDropdown extends StatefulWidget {
  const btnDropdown({Key? key, required this.title, required this.items});
  final String title;
  final List<String> items;

  @override
  State<btnDropdown> createState() => _btnDropdownState();
}

class _btnDropdownState extends State<btnDropdown> {
  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 45, 45, 45)),
          ),
          Container(
              decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 208, 208, 208), width: 1),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButton(
                hint: const Text(
                  'Select Item',
                  style: TextStyle(color: Color.fromARGB(255, 208, 208, 208)),
                ),
                style: const TextStyle(color: Color.fromARGB(255, 18, 18, 18)),
                isExpanded: true,
                value: valueChoose,
                underline: Container(),
                onChanged: (newValue) {
                  setState(() {
                    valueChoose = newValue as String?;
                  });
                },
                items: widget.items.map((valueItem) {
                  return DropdownMenuItem(
                    child: Text(valueItem),
                    value: valueItem,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
