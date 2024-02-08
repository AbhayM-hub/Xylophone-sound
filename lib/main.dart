import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({color, soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color, shape: RoundedRectangleBorder()),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.yellow, soundNumber: 2),
                buildKey(color: Colors.black, soundNumber: 3),
                buildKey(color: Colors.blue, soundNumber: 4),
                buildKey(color: Colors.green, soundNumber: 5),
                buildKey(color: Colors.blueGrey, soundNumber: 6),
                buildKey(
                    color: const Color.fromARGB(255, 54, 139, 244),
                    soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
