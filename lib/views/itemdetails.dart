import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:arektu_shikhi/services/database.dart';

class ItemView extends StatefulWidget {
  final DocumentSnapshot snapshot;
  const ItemView({Key? key, required this.snapshot}) : super(key: key);

  @override
  _ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context, false)),
        title: Text(
          // widget.course.title,
          widget.snapshot['title'],
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: YoutubePlayer(
              controller: new YoutubePlayerController(
                // initialVideoId: YoutubePlayer.convertUrlToId(widget.course.link),
                // initialVideoId: widget.course.link,
                initialVideoId: widget.snapshot['link'],
                flags: YoutubePlayerFlags(
                  autoPlay: false,
                  mute: false,
                  disableDragSeek: false,
                  loop: false,
                  isLive: false,
                  forceHD: false,
                ),
              ),
              showVideoProgressIndicator: true,
              liveUIColor: Colors.amber,
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () => {},
              child: Text('Press me'),
            ),
          ),
        ],
      ),
    );
  }
}
