import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(Color keyColor, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.orange, 1),
                buildKey(Colors.teal, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.blue, 4),
                buildKey(Colors.red, 5),
                buildKey(Colors.blueAccent, 6),
                buildKey(Colors.deepPurple, 7),
              ],
            ),
        ),
      ),
    );
  }
}
