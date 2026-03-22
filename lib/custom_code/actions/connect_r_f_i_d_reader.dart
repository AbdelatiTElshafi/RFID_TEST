// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

Future<String> connectRFIDReader() async {
  const platform = MethodChannel('rfid_channel');

  try {
    final bool? result = await platform.invokeMethod('connectRFID');
    return result == true
        ? 'Reader connected'
        : 'Connection failed or permission required';
  } catch (e) {
    return 'Connection error: $e';
  }
}
