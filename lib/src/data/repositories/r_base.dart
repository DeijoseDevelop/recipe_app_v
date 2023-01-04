import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class BaseRepository {
  static Future<Map<String, dynamic>> readFile() async {
    return json.decode(await rootBundle.loadString('assets/data.json'));
  }
}
