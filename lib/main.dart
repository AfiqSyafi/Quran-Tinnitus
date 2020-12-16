import 'package:flutter/material.dart';
import 'package:quran_tinnitus/about.dart';
import 'package:quran_tinnitus/music.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final tabs = [
    Music(),
    Center(child: Text('Profile')),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.lightGreen[500],
      ),
      body: tabs[_currentIndex],

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.brown[800],
        elevation: 0,
        onPressed: (){

        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Colors.lightGreen[500],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightGreen[500],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.grey,
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'About',
            backgroundColor: Colors.brown[800],
            ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


