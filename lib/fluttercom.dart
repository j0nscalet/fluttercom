import 'dart:async';

import 'package:flutter/services.dart';

class Fluttercom {
  static const MethodChannel _channel =
      const MethodChannel('fluttercom');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
