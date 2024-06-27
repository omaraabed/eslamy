import 'package:eslamy/hadeth_details.dart';
import 'package:eslamy/home_screen.dart';
import 'package:eslamy/myt_theme.dart';
import 'package:eslamy/sura_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraContent.routeName: (context) => SuraContent(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
