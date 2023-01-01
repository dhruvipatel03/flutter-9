import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class music extends StatefulWidget {
  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music> {
  String audio = "calmdown.mp3";
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 95, 56, 22),
      appBar: AppBar(
        title: Center(child: Text("SONG")),
        backgroundColor: Color.fromARGB(255, 187, 73, 111),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Image(image: AssetImage("assets/calm2.jpeg")),
              height: 545,
              width: 350,
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50),
                  backgroundColor: Color.fromARGB(255, 128, 76, 138),
                ),
                onPressed: (() async {
                  await audioPlayer.play(AssetSource("calmdown.mp3"));
                  print("Audio Play");
                }),
                child: const Text("play")),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50),
                  backgroundColor: Color.fromARGB(255, 128, 76, 138),
                ),
                onPressed: (() async {
                  await audioPlayer.pause();
                  print("Audio pause");
                }),
                child: const Text("pause")),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50),
                  backgroundColor: Color.fromARGB(255, 128, 76, 138),
                ),
                onPressed: (() async {
                  await audioPlayer.resume();
                  print("Audio resume");
                }),
                child: const Text("resume")),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50),
                  backgroundColor: Color.fromARGB(255, 128, 76, 138),
                ),
                onPressed: (() async {
                  await audioPlayer.stop();
                  print("Audio stop");
                }),
                child: const Text("stop")),
          ],
        ),
      ),
    );
  }
}
