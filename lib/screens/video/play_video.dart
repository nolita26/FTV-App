import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:connectingwithfirebase/model/item.dart';
import 'package:video_player/video_player.dart';

class PlayVideo extends StatefulWidget{

  static const routeName= '/play_video';
  final String title;
  final String vidUrl;
  final String desc;
  PlayVideo({@required this.title, @required this.vidUrl, @required this.desc});

  @override
  State<StatefulWidget> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {

  ChewieController _chewieController;
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {

    super.initState();

    _videoPlayerController= new VideoPlayerController.network(widget.vidUrl);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController ,
      fullScreenByDefault: true,
      autoInitialize: true,
      looping: false,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Stop watching this video?'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: Text("NO"),
          ),
          SizedBox(height: 16),
          new GestureDetector(
            onTap: () {
              if(_videoPlayerController.value.isPlaying){_videoPlayerController.pause();}
              Navigator.of(context).pop(true);
            },
            child: Text("YES"),
          ),
        ],
      ),
    ) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: new Scaffold(
          appBar: new AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            children: <Widget>[
              Chewie(
                controller: _chewieController,
              ),
              Container(
                child: Text(widget.desc),
              ),
            ],
          ),
      ),
    );
  }
}