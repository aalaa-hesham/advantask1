import 'package:flutter/material.dart';

import 'audioserv.dart';
class Audiolist extends StatelessWidget {
   Audiolist({Key? key}) : super(key: key);

  final List<String> typeaudio = [
    'assets/Free_Test_Data_100KB_MP3.mp3',
    'assets/lighter-154853.mp3',
    'assets/mixkit-arcade-retro-game-over-213.wav',
    'assets/mouse-click-153941.mp3',
  ];

  final Audioservex _audioservex = Audioservex();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: typeaudio.length,
      itemBuilder: (context, index) {
        final audioPath = typeaudio[index];
        return Column(
          children: [

              Row(
              children: [
                for (int i=1; i<= 10; i++)

                Center(
                  
                  child: Column(
                    children: [

                      ElevatedButton(
                        onPressed: () {
                          _audioservex.playsound(audioPath);
                        },
                        child: const Text("Play"),
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _audioservex.stopsound();
                        },
                        child: const Text("Stop"),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                    ],
                  ),
                  heightFactor: 10,

                ),

              ],
            ),
          ],
        );
      },
    );
  }
}