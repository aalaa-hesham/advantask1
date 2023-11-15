import 'package:assets_audio_player/assets_audio_player.dart';
class Audioservex {
  static final _audplay = AssetsAudioPlayer();
  List<String> typeaudio = [
    'assets/Free_Test_Data_100KB_MP3.mp3' ,
    'assets/lighter-154853.mp3' ,
    'assets/mixkit-arcade-retro-game-over-213.wav' ,
    'assets/mouse-click-153941.mp3' ,
  ] ;

  void initaudio(List<String> typeaudio) {

    String audioPath = typeaudio[0];
    _audplay.open(Audio('assets/$audioPath'));
  }
  static void playsound(List<String> typeaudio){
    String audioPath = typeaudio[0];
    _audplay.play();
  }
  static void stopsound(List<String> typeaudio){
    String audioPath = typeaudio[0];
    _audplay.stop();
  }
}