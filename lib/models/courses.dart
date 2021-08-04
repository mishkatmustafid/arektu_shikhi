import 'package:flutter/material.dart';

class Course {
  String title ="", link ="";
  Color color = new Color(0xFF00FF);
  // Map quiz= new Map();

  // Course({
  //   this.title, 
  //   this.link,
  //   this.color,
  // });
  Course(String title, String link, Color color){
    this.title = title;
    this.link = link;
    this.color = color;
    // this.quiz = quiz;
  }
}

List<Course> courses = [
  Course(
    "Dart for Android Developers", 
    "https://www.youtube.com/watch?v=XBKzpTz65Io", 
    Colors.blue,
  ),

  Course(
    "Android for Beginners", 
    "https://www.youtube.com/watch?v=XBKzpTz65Io", 
    Colors.green
  ),

  Course(
    "Android for Beginners", 
    "https://www.youtube.com/watch?v=XBKzpTz65Io", 
    Colors.amber
  ),
];