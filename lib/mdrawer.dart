import 'package:flutter/material.dart';
import 'package:quran_tinnitus/1drawer.dart';
import 'package:quran_tinnitus/2drawer.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
    builder: (context) => const HomePage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DrawerScreen(),
        HomeScreen()
      ],),
    );
  }
}



