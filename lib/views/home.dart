import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class home extends StatelessWidget {
  void _playsound(int notenum) {
    final audioPlugin = AudioCache();
    audioPlugin.play('note$notenum.wav');
  }

  Expanded getSound(Color primary, int notenum) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primary,
        ),
        onPressed: () {
          _playsound(notenum);
        },
        child: const SizedBox(),
      ),
    );
  }

  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[500],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getSound(Colors.red, 1),
            getSound(Colors.blue, 2),
            getSound(Colors.green, 3),
            getSound(Colors.yellow, 4),
            getSound(Colors.teal, 5),
            getSound(Colors.orange, 6),
            getSound(Colors.brown, 7),
          ],
        ),
      ),
    );
  }
}
