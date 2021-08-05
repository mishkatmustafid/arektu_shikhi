import 'package:arektu_shikhi/models/courses.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  final Course course;
  const ItemScreen({Key? key, required this.course}) : super(key: key);

  @override
  _ItemviewState createState() => _ItemviewState();
}

class _ItemviewState extends State<ItemScreen> {
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
      // body: 
    );
  }
}

// https://www.youtube.com/watch?v=wHXl4HeuwiM
// https://youtu.be/wHXl4HeuwiM
// https://www.youtube.com/embed/wHXl4HeuwiM