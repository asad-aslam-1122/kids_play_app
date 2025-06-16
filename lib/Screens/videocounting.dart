import 'package:flutter/material.dart';
import 'package:kids_play_mob_app/model/counting.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosScreenco extends StatefulWidget {
  VideosScreenco({
    Key? key,
    required this.countingD,
  }) : super(key: key);
  CountingD countingD;

  @override
  State<VideosScreenco> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreenco> {
  late YoutubePlayerController _controller;
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.countingD.link!)!,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.amber,
      onReady: () {
        print('Player is ready.');
      },
    );
  }
}
