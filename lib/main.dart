import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.teal,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.purple,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
