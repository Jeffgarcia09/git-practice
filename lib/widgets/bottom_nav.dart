import 'package:flutter/material.dart';
import 'package:motocode/Pages/account.dart';
import 'package:motocode/Pages/history.dart';
import 'package:motocode/Pages/result_page.dart';
import 'package:motocode/Pages/test_page.dart';
import 'package:motocode/widgets/scan.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  String _qrResult = 'Scan a QR code';

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;

  final List<Widget> _children = [
    const HistoryPage(),
    const AccountsPage(),
    const TestPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(0, 149, 215, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_outlined, size: 40.0, color: Colors.white),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_outlined, size: 40.0, color: Colors.white),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30.0, color: Colors.white),
            label: 'Test Page',
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 90.0,
        height: 90.0,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          onPressed: () async {
            ScannerClass.isScanned = false;
            List<String> result = await ScannerClass.getQrData();
  setState(() {
    _qrResult = result.join(', '); // Join the list into a single string
  });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(qrResult: _qrResult),
              ),
            );
          },
          child: Icon(Icons.qr_code_scanner_outlined,
              size: 40.0, color: Color.fromRGBO(0, 149, 215, 1)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
