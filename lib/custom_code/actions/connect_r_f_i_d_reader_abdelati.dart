// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:zebra123/zebra123.dart';

Future<String> connectRFIDReaderAbdelati() async {
  try {
    final zebra = Zebra123(
      callback: (Interfaces interface, Events event, dynamic data) {
        debugPrint('Interface: $interface | Event: $event | Data: $data');
      },
    );

    zebra.connect();

    return 'Connecting';
  } catch (e) {
    return 'Error: $e';
  }
}
