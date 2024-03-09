import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded builtKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              builtKey(color: Colors.red, soundNumber: 1),
              builtKey(color: Colors.orange, soundNumber: 2),
              builtKey(color: Colors.yellow, soundNumber: 3),
              builtKey(color: Colors.green, soundNumber: 4),
              builtKey(color: Colors.blue, soundNumber: 5),
              builtKey(color: Colors.indigo, soundNumber: 6),
              builtKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
