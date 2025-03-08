import 'package:flutter/material.dart';
import 'package:flutter_application_providers/screens/home_page.dart';
import 'package:flutter_application_providers/screens/introduction_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionPage(),

    routes: {
      '/homepage': (context)=> HomePage(),
      '/introductionpage': (context)=> IntroductionPage(),
      },
    );
  }
}
