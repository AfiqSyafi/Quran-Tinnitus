import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quran_tinnitus/config/palette.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor),
        duration: Duration(milliseconds: 250),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0)
        ),

        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   isDrawerOpen?IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                     setState(() {
                       xOffset = 0;
                       yOffset = 0;
                       scaleFactor = 1;
                       isDrawerOpen = false;
                     });
                   }):
                    IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xOffset = width/2;
                            yOffset = height/4;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        }),
                    Column(
                      children: [Text('Username'), Text('---')],
                    ),
                    CircleAvatar(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
