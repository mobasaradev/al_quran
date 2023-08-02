import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/theme/theme.dart';

class AudioControlBar extends StatefulWidget {
  const AudioControlBar({super.key, required this.audioUrl});
  final String audioUrl;

  @override
  State<AudioControlBar> createState() => _AudioControlBarState();
}

class _AudioControlBarState extends State<AudioControlBar> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late Stream<PlayerState> _playerStateStream;

  @override
  void initState() {
    super.initState();
    _initAudioPlayer();
  }

  void _initAudioPlayer() async {
    await _audioPlayer.setUrl(widget.audioUrl);
    _playerStateStream = _audioPlayer.playerStateStream;
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: _playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (!(playing ?? false)) {
          return InkWell(
            onTap: _audioPlayer.play,
            child: const Icon(
              Icons.play_arrow,
              size: 35,
              color: AppColors.tertiaryText,
            ),
          );
        } else if (processingState != ProcessingState.completed) {
          return InkWell(
            onTap: _audioPlayer.pause,
            child: const Icon(
              Icons.pause,
              size: 35,
              color: AppColors.tertiaryText,
            ),
          );
        }
        return const Icon(Icons.play_arrow);
      },
    );
  }
}
