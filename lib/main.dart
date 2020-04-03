import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded generateButton({x, y}) {
    return Expanded(
      child: FlatButton(
        color: Colors.blue[x],
        onPressed: () {
          playSound(y);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateButton(x: 100, y: 1),
              generateButton(x: 200, y: 2),
              generateButton(x: 300, y: 3),
              generateButton(x: 400, y: 4),
              generateButton(x: 500, y: 5),
              generateButton(x: 600, y: 6),
              generateButton(x: 700, y: 7),
            ],
          ),
        ),
      ),
    );
  }
}
