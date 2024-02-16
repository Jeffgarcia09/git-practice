import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerClass {
  static bool isScanned = false;

  static Future<List<String>> getQrData() async {
    List<String> _result = [];
    try {
      if (!isScanned) {
        final qrCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", // Scan button color
          "Cancel", // Cancel button text
          true, // Show flashlight toggle
          ScanMode.QR, // Scan mode (QR codes only)
        );

        // Split the data using a comma as a delimiter
        _result = qrCode.split(',');

        isScanned = true;
      }
    } catch (e) {
      print('Exception: $e');
    }
    return _result;
  }
}
