import 'package:arektu_shikhi/models/courses.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:arektu_shikhi/services/database.dart';

class ItemView extends StatefulWidget {
  final Course course;
  const ItemView({Key? key, required this.course}) : super(key: key);
  

  @override
  _ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  // var url=" ";
  // if(course['link']!=null) {
  //   url = course['link'];
  // }
  late DatabaseService db;
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
          widget.course.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: widget.course.color,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: YoutubePlayer(
              controller: new YoutubePlayerController(
                // initialVideoId: YoutubePlayer.convertUrlToId(widget.course.link),
                // initialVideoId: widget.course.link,
                initialVideoId: "wHXl4HeuwiM",
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
