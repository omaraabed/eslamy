import 'package:eslamy/hadeth_details.dart';
import 'package:eslamy/hadeth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xffFACC1D)
              :  Color(0xffB7935F),
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xffFACC1D)
              :  Color(0xffB7935F),
          thickness: 3,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xffFACC1D)
                  :  Color(0xffB7935F),
              endIndent: 50,
              indent: 50,
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
