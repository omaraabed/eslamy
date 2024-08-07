import 'package:eslamy/Provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Color(0xffB7935F)
                                  : Colors.white,
                        ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.done_all_sharp,
                    size: 35,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black45
                            : Color(0xffFACC1D)),
                  ),
                  Spacer(),
                  Icon(
                    Icons.done_all_sharp,
                    size: 35,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black45
                        : Color(0xffFACC1D),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
