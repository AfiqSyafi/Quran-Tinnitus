import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {

  AudioPlayer audioPlayer = new AudioPlayer();

  @override
  Widget build(BuildContext context) {
    /*return Container(
      width: MediaQuery.of(context).size.width*1,
      height: 80,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[

          Text('Al-Fatihah'),
          SizedBox(width: 30,),
          IconButton(
              icon: Icon(Icons.play_circle_fill_outlined),
              onPressed: (){
                audioPlayer.play('https://server8.mp3quran.net/afs/001.mp3');
              }),
          SizedBox(width: 15,),
          IconButton(
              icon: Icon(Icons.stop_circle_outlined),
              onPressed: () {
                audioPlayer.stop();
              }),
        ],
      ),

    );*/

    return Scaffold(
      backgroundColor: Colors.grey[900],

      body: Padding(padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

              Text('Al-Fatihah'),
              SizedBox(width: 30,),
              IconButton(
                icon: Icon(Icons.play_circle_fill_outlined),
                onPressed: (){
              audioPlayer.play('https://server8.mp3quran.net/afs/001.mp3');
            }),
              SizedBox(width: 15,),
              IconButton(
                icon: Icon(Icons.stop_circle_outlined),
                onPressed: () {
              audioPlayer.stop();
            }),
          ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('Ayat Kursi'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://cdn.islamic.network/quran/audio/128/ar.alafasy/262.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('Al-Ikhlas'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://server8.mp3quran.net/afs/112.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('An-Nas'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://server8.mp3quran.net/afs/114.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('An-Falaq'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://server8.mp3quran.net/afs/113.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('Al-Baqarah'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://server8.mp3quran.net/afs/002.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('Al-Imran'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://server8.mp3quran.net/afs/003.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('Ar-Rahman'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://server8.mp3quran.net/afs/055.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),

          Container(
            width: MediaQuery.of(context).size.width*1,
            height: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Text('Al-Fajr'),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    onPressed: (){
                      audioPlayer.play('https://server8.mp3quran.net/afs/089.mp3');
                    }),
                SizedBox(width: 15,),
                IconButton(
                    icon: Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      audioPlayer.stop();
                    }),
              ],),
          ),


        ],
      ),
      )

    );
  }
}
