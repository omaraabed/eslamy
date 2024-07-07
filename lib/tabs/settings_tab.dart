import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/my_provider.dart';
import '../show_lang_botton_sheet.dart';
import '../show_theme_botton_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.theming,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color:
                Theme.of(context).brightness == Brightness.light
                    ? Color(0xffB7935F)
                    : Colors.white,),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(AppLocalizations.of(context)!.light),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showLangSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color:
                Theme.of(context).brightness == Brightness.light
                    ? Color(0xffB7935F)
                    : Colors.white,),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(provider.language=="en"?  "English" :"عربي",),
              ),
            ),
          ),
        ],
      ),
    );
  }


  void showLangSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowLangBottonSheet();
      },
    );
  }
  void showThemeSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowThemeBottomSheet();
      },
    );
  }
}
