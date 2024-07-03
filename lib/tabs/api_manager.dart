import 'dart:convert';

import 'package:eslamy/model/radioResponse.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  static Future<List<Radios>> getRadios() async {
    Uri url = Uri.https("api.mp3quran.net", "/radios/radio_arabic.json");
    http.Response response = await http.get(url);
    var data = jsonDecode(utf8.decode(response.bodyBytes));
    RadioResponse radioResponse = RadioResponse.fromJson(data);
    return radioResponse.radios ?? [];
  }
}
