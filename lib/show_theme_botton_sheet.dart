import 'package:eslamy/Provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
              },
              child: Row(
                children: [
                  Text(
                    'Light',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Theme.of(context).primaryColor),
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
              },
              child: Row(
                children: [
                  Text(
                    'Dark',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Spacer(),
                  Icon(
                    Icons.done_all_sharp,
                    size: 35,
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
