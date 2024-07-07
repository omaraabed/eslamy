import 'package:eslamy/tabs/sura_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = 'suracontent';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadfile(arg.index);
    }
    return Stack(children: [
      SizedBox(
          width: double.infinity,
          child: Image.asset(
            Theme.of(context).colorScheme.brightness == Brightness.light
                ? 'assets/images/bg3.png'
                : 'assets/images/bg.png',
            fit: BoxFit.fill,
          )),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            arg.name,
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xffFACC1D)
                  : Color(0xffB7935F),
              thickness: 3,
            ),
            itemBuilder: (context, index) {
              return Center(
                child: IntrinsicWidth(
                  child: IntrinsicHeight(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xff141A2E)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '${index + 1} ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              verses[index],
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    ]);
  }

  void loadfile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> liens = sura.split('\n');
    verses = liens;
    setState(() {});
  }
}
