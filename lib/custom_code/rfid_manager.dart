import 'package:flutter/foundation.dart';
import 'package:zebra123/zebra123.dart';

class RfidManager {
  static Zebra123? zebra;
  static String connectionStatus = 'Disconnected';

  static void init() {
    zebra ??= Zebra123(
      callback: (Interfaces interface, Events event, dynamic data) {
        debugPrint('Interface: $interface | Event: $event | Data: $data');

        if (event == Events.connectionStatus) {
          try {
            connectionStatus = data.status.toString();
          } catch (_) {
            connectionStatus = 'Unknown';
          }
        }
      },
    );
  }

  static Future<String> connect() async {
    try {
      init();
      connectionStatus = 'Connecting...';
      zebra!.connect();
      return connectionStatus;
    } catch (e) {
      connectionStatus = 'Error: $e';
      return connectionStatus;
    }
  }

  static String getStatus() {
    return connectionStatus;
  }
}
