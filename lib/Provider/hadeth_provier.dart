import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../hadeth_model.dart';

class HadethProvier extends ChangeNotifier {
  List<HadethModel> AllAhadeth = [];

  void loadHadeth() async {
    String hadeth = await rootBundle.loadString('assets/files/ahadeth3.txt');
    List<String> ahadethcontent = hadeth.split('#');
    for (int i = 0; i < ahadethcontent.length; i++) {
      List<String> hadethline = ahadethcontent[i].trim().split('\n');
      String title = hadethline[0];
      hadethline.removeAt(0);
      List<String> content = hadethline;
      HadethModel hadethModel = HadethModel(title, content);
      AllAhadeth.add(hadethModel);
      notifyListeners();
    }
  }
}
