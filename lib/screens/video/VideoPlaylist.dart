import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'play_video.dart';

class VideoPlaylist extends StatefulWidget{
  static final routeName= '/vid_playlist';

  @override
  State<StatefulWidget> createState() => _VideoPlaylistState();
}

class _VideoPlaylistState extends State<VideoPlaylist> {

  void _chooseVideo(String title, String vidUrl, String desc){

    Navigator.push(context, MaterialPageRoute(builder: (_) => PlayVideo(title: title, vidUrl: vidUrl, desc: desc),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Playlist"),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Container(
            height: 700,
            child: StreamBuilder(
              stream: Firestore.instance.collection('videos').snapshots(),
              builder: (ctx, streamSnapshot) {
                if (streamSnapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                final docs = streamSnapshot.data.documents;
                return ListView.builder(
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      subtitle: Text(docs[index]['title']),
                      title: Text(docs[index]['subtitle']),
                      leading: Text('Insert Image'),
                      onTap: ()=> _chooseVideo(docs[index]['title'], docs[index]['vidUrl'], docs[index]['description']),
                    );
                  },
                  itemCount: docs.length,
                );
              },
            ),
        ),
      ),
    );
  }
}