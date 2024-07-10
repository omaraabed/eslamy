import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class SuraDetalisProvider extends ChangeNotifier {
  List<String> verses = [];

  void loadfile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> liens = sura.split('\n');
    verses = liens;
    notifyListeners();
  }
}
