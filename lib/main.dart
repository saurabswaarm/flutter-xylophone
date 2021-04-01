import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget buildKey({Color color, int keyNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$keyNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    player.loadAll([
      'note1.wav',
      'note2.wav',
      'note3.wav',
      'note4.wav',
      'note5.wav',
      'note6.wav',
      'note7.wav'
    ]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.orange ,keyNumber: 1 ),
              buildKey(color: Colors.amber ,keyNumber: 2), 
              buildKey(color: Colors.blueGrey ,keyNumber: 3),
              buildKey(color: Colors.green ,keyNumber: 4),
              buildKey(color: Colors.pink ,keyNumber: 5),
              buildKey(color: Colors.purple ,keyNumber: 6),
              buildKey(color: Colors.yellow ,keyNumber: 7),
            
            
            ],
          ),
        ),
      ),
    );
  }
}
