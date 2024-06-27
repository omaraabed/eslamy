import 'package:eslamy/tabs/ahadeth_tab.dart';
import 'package:eslamy/tabs/quran_tab.dart';
import 'package:eslamy/tabs/radio_tab.dart';
import 'package:eslamy/tabs/sebha_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [QuranTab(), SebhaTab(), RadioTab(), AhadethTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/bg3.png',
            fit: BoxFit.fill,
          )),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('إسلامي', style: Theme.of(context).textTheme.bodyLarge),
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
                label: 'Moshaf',
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Sebha',
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio',
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: 'Ahadeth',
                backgroundColor: Theme.of(context).primaryColor),
          ],
        ),
        body: tabs[index],
      ),
    ]);
  }
}
