import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/theme/theme.dart';

class AudioControlBar extends StatelessWidget {
  const AudioControlBar({super.key, required this.audioPlayer});
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (!(playing ?? false)) {
          return InkWell(
            onTap: audioPlayer.play,
            child: const Icon(
              Icons.play_arrow,
              size: 35,
              color: AppColors.tertiaryText,
            ),
          ); 
        } else if (processingState != ProcessingState.completed) {
          return InkWell(
            onTap: audioPlayer.pause,
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
