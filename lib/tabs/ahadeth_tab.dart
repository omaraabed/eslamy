import 'package:eslamy/Provider/hadeth_provier.dart';
import 'package:eslamy/hadeth_details.dart';
import 'package:eslamy/hadeth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HadethProvier()..loadHadeth(),
      builder: (context, child) {
        var provider = Provider.of<HadethProvier>(context);
        return Column(
          children: [
            Image.asset('assets/images/ahadeth2.png'),
            Divider(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xffFACC1D)
                  : Color(0xffB7935F),
              thickness: 3,
            ),
            Text(
              AppLocalizations.of(context)!.ahadeth,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Divider(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xffFACC1D)
                  : Color(0xffB7935F),
              thickness: 3,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Color(0xffFACC1D)
                      : Color(0xffB7935F),
                  endIndent: 50,
                  indent: 50,
                  thickness: 1,
                ),
                itemBuilder: (context, index) {
                  return Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, HadethDetails.routeName,
                                arguments: provider.AllAhadeth[index]);
                          },
                          child: Text(provider.AllAhadeth[index].title)));
                },
                itemCount: provider.AllAhadeth.length,
              ),
            )
          ],
        );
      },
    );
  }
}
