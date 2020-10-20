import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded soundItem({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: color,
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
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            soundItem(color: Colors.red, soundNum: 1),
            soundItem(color: Colors.yellow, soundNum: 2),
            soundItem(color: Colors.teal, soundNum: 3),
            soundItem(color: Colors.green, soundNum: 4),
            soundItem(color: Colors.blue, soundNum: 5),
            soundItem(color: Colors.orange, soundNum: 6),
            soundItem(color: Colors.indigo, soundNum: 7),
          ]),
        ),
      ),
    );
  }
}
