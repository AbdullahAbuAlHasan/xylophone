import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  void buildKey() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  playSound(1);
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  playSound(2);
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  playSound(3);
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  playSound(4);
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  playSound(5);
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  playSound(6);
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
