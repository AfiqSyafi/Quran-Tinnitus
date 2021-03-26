import 'package:flutter/material.dart';
import 'package:quran_tinnitus/config/palette.dart';

class DrawerScreen extends StatefulWidget {

  const DrawerScreen({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
    builder: (context) => const DrawerScreen(),
  );

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.darkGreen,
    );
  }
}

