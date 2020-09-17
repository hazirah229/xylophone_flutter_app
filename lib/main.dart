import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  int noteNum = 1;

  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Xylophone',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone App'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(1);
                  },
                ),
                FlatButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    playSound(2);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(3);
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                ),
                FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    playSound(5);
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(6);
                  },
                ),
                FlatButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class XylophonePage extends StatefulWidget {
  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
