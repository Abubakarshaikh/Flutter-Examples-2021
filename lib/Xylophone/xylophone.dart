import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  static const routeKey = "Xylophone";
  void playSound(int soundNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play(
      'audio/note$soundNumber.wav',
    );
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: color,
        ),
        onTap: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
