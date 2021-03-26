import 'package:flutter/material.dart';
import 'file:///C:/Users/Administrator/AndroidStudioProjects/quran_tinnitus/lib/profile.dart';
import 'package:quran_tinnitus/about.dart';
import 'package:quran_tinnitus/music.dart';
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
  int _currentIndex = 0;
  final tabs = [
    Music(),
    Profile(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      appBar: AppBar(
        title: const Text('Signed in'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.signOut();
            Navigator.of(context).push(AuthScreen.route);
          },
          child: const Text('Sign out'),
        ),
      ),
    ); */
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Quran Recitation Tinnitus',
          style: TextStyle(
            fontFamily: 'Source',
          ),
        ),
        centerTitle: true,
        backgroundColor: Palette.lightGreen,
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Palette.lightGreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Palette.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'About',
            backgroundColor: Palette.darkRed,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
