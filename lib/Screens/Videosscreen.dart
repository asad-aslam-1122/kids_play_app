import 'package:flutter/material.dart';
import 'package:kids_play_mob_app/model/videos.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class VideosScreen extends StatefulWidget {

   VideosScreen({Key? key, required this.videos,}) : super(key: key);
  Videos videos;


  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  late YoutubePlayerController _controller;
  void initState(){
    _controller = YoutubePlayerController(
      initialVideoId:YoutubePlayer.convertUrlToId(widget.videos.link!)!,
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
