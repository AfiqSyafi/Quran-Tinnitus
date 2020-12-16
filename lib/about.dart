import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
          children: <Widget>[
            Text('What is Tinnitus?',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.lightGreen[500],
                  fontFamily: 'Source'
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Text('Tinnitus is the perception of noise or ringing in the ears.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign:  TextAlign.justify,
              ),
            )
          ],
        ),


    );
  }
}

