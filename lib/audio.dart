import 'package:flutter/material.dart';
class Audiolist extends StatefulWidget {
  const Audiolist({super.key});

  @override
  State<Audiolist> createState() => _AudiolistState();
}

class _AudiolistState extends State<Audiolist> {
  List<String> typeaudio = [
    'assets/Free_Test_Data_100KB_MP3.mp3' ,
    'assets/lighter-154853.mp3' ,
    'assets/mixkit-arcade-retro-game-over-213.wav' ,
    'assets/mouse-click-153941.mp3' ,
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
child: Row(
  children: [
ListView.builder(
    itemBuilder: (context, index){
      return
        Row(
          children: [
            ElevatedButton(onPressed: (){
              typeaudio[index].toString();
            }, child: Text("open"))
          ],
        );
    })
  ],
),
      ),
    );
  }
}
