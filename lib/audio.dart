import 'package:flutter/material.dart';

import 'audioserv.dart';
class Audiolist extends StatefulWidget {
  const Audiolist({super.key});

  @override
  State<Audiolist> createState() => _AudiolistState();
}

class _AudiolistState extends State<Audiolist> {
  Audioservex _audioservex = Audioservex();
  List<String> typeaudio = [
    'assets/Free_Test_Data_100KB_MP3.mp3' ,
    'assets/lighter-154853.mp3' ,
    'assets/mixkit-arcade-retro-game-over-213.wav' ,
    'assets/mouse-click-153941.mp3' ,
  ] ;
  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
        scrollDirection: Axis.vertical,
child: Row(
  children: [
ListView.builder(
    itemBuilder: (context, index){
      return
        Row(
          children: [
            for (int i=1; i<=10; i++)

      // Rest of your code

      ElevatedButton(
        onPressed: () {
          _audioservex.initaudio(typeaudio);
        },
        child: Text("open"),
      ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Audioservex.playsound(typeaudio);
              },
              child: Text("play"),
            ),const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Audioservex.stopsound(typeaudio);
              },
              child: Text("stop"),
            ),
          ],
        );
    })
  ],
),

    );
  }
}
