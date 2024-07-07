import 'package:eslamy/tabs/ahadeth_tab.dart';
import 'package:eslamy/tabs/quran_tab.dart';
import 'package:eslamy/tabs/radio_tab.dart';
import 'package:eslamy/tabs/sebha_tab.dart';
import 'package:eslamy/tabs/settings_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
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
          title: Text(AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/moshaf.png')),
                label: AppLocalizations.of(context)!.quran,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: AppLocalizations.of(context)!.ahadeth,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
                backgroundColor: Theme.of(context).primaryColor),
          ],
        ),
        body: tabs[index],
      ),
    ]);
  }
}
