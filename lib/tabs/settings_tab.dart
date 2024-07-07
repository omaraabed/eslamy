import 'package:flutter/material.dart';

import '../show_theme_botton_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theming',style: Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Light'),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Text('Language ',style: Theme.of(context).textTheme.bodyLarge,),
          Container(
            width: double.infinity,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Theme.of(context).primaryColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('English'),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeSheet(){
    showModalBottomSheet(context: context, builder: (context) {
     return ShowThemeBottomSheet();
    },);
  }
}
