import 'package:eslamy/hadeth_details.dart';
import 'package:eslamy/hadeth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> AllAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (AllAhadeth.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Image.asset('assets/images/ahadeth2.png'),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          'الأحاديث',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
            ),
            itemBuilder: (context, index) {
              return Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HadethDetails.routeName,
                            arguments: AllAhadeth[index]);
                      },
                      child: Text(AllAhadeth[index].title)));
            },
            itemCount: AllAhadeth.length,
          ),
        )
      ],
    );
  }

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
      setState(() {});
    }
  }
}
