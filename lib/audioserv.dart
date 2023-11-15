import 'package:assets_audio_player/assets_audio_player.dart';


class Audioservex {
  final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  void initaudio(String audioPath) {
    assetsAudioPlayer.open(
      Audio(audioPath),
    );
  }

  void playsound(String audioPath) {
    assetsAudioPlayer.open(
      Audio(audioPath),
      showNotification: true,
      loopMode: LoopMode.playlist,
    );
  }

  void stopsound() {
    assetsAudioPlayer.stop();
  }
}