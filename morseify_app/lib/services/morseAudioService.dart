// Globally defined morse code audio service
import 'package:audioplayers/audioplayers.dart';

class MorseAudioService {
  static final AudioPlayer _player = AudioPlayer();
  static const dotDuration = 100;

  // play morse audio
  static Future<void> playMorse(String code) async {
    for (int i = 0; i < code.length; i++) {
      if (_player.state == PlayerState.stopped) {
        break; // Stop playing if the player is stopped
      }

      if (code[i] == ".") {
        await _player.play(AssetSource("audios/dot.mp3"));
        await Future.delayed(const Duration(milliseconds: 3 * dotDuration));
      } else if (code[i] == "-") {
        await _player.play(AssetSource("audios/dash.mp3"));
        await Future.delayed(const Duration(milliseconds: 4 * dotDuration));
      } else if (code[i] == " ") {
        await Future.delayed(const Duration(milliseconds: 5 * dotDuration));
      }
    }
  }

  // stops morse audio
  static void stop() {
    _player.stop();
  }
}
