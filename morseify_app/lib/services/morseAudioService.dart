// Globally defined morse code audio service
import 'package:audioplayers/audioplayers.dart';

class MorseAudioService {
  static final AudioPlayer _player = AudioPlayer();
  static const dotDuration = 100;
  static bool _cancelPlayback = false;

  // play morse audio
  static Future<void> playMorse(String code) async {
    _cancelPlayback = false; // flag reset

    for (int i = 0; i < code.length; i++) {
      if (_cancelPlayback) break;

      if (code[i] == ".") {
        await _player.play(AssetSource("audios/dot.mp3"));
        await Future.delayed(const Duration(milliseconds: 4 * dotDuration));
      } else if (code[i] == "-") {
        await _player.play(AssetSource("audios/dash.mp3"));
        await Future.delayed(const Duration(milliseconds: 5 * dotDuration));
      } else if (code[i] == " ") {
        // Pause for space (word separator)
        await Future.delayed(const Duration(milliseconds: 6 * dotDuration));
      }

      if (_cancelPlayback) break;
    }
  }

  // stops morse audio
  static void stop() {
    _cancelPlayback = true;
    _player.stop();
  }
}
