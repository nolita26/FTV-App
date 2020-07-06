import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/source/chewie_list_item.dart';

class VideoPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset("videos/video1.mp4"),
            looping: true,
          )
        ],
      ),
    );
  }
}