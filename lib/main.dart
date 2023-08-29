import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: TextButton(
                onPressed: (){
                  AssetsAudioPlayer.newPlayer().open(
                    Audio("assets/note1.wav"),
                    autoStart: true,
                    showNotification: true,
                  );
                },
                child: Text('Click me!'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}