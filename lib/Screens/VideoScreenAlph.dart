

import 'package:flutter/material.dart';
import 'package:kids_play_mob_app/model/alphabet.dart';
import 'package:kids_play_mob_app/model/videos.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class VideosScreenAlpha extends StatefulWidget {

  VideosScreenAlpha({Key? key, required this.alphabetD,}) : super(key: key);
  AlphabetD alphabetD;


  @override
  State<VideosScreenAlpha> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreenAlpha> {
  late YoutubePlayerController _controller;
  void initState(){
    _controller = YoutubePlayerController(
      initialVideoId:YoutubePlayer.convertUrlToId(widget.alphabetD.link!)!,
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
      progressIndicatorColor:Colors.amber,

      onReady: () {
        print('Player is ready.');
      },
    );

  }
}
