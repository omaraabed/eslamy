import 'package:eslamy/hadeth_model.dart';
import 'package:flutter/material.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'details';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
            arg.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 18.0, right: 10, left: 10, bottom: 50),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Text(
                arg.content.join('\n'),
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
