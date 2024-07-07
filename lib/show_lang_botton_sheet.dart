import 'package:eslamy/Provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowLangBottonSheet extends StatelessWidget {
  const ShowLangBottonSheet({super.key});

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
                pro.changelang("en");
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.english,
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
                pro.changelang("ar");
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.arabic,
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
