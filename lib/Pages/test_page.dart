import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<dynamic> users = [];
  
  @override
  void initState() {
    super.initState();
    fetchUsers(); // Fetch data when the page is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,size: 40.0,),
        backgroundColor: Colors.blue,
        title: const Text('API TESTING', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              title: Text(user['email'] ?? ''),
              subtitle: Text(user['name']['first'] ?? ''),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user['picture']['thumbnail'] ?? ''),
              ),
            ),
          );
        },
      ),
    );
  }

  void fetchUsers() async {
    print('Fetching User Data');
    const url = 'https://randomuser.me/api/?results=15';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print('fetchusers completed');
  }
}

