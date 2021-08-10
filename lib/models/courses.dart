import 'package:flutter/material.dart';

class Course {
  String title =" ", link =" ";
  Color color = new Color(0xFF00FF);
  // Map quiz= new Map();

  Course(String title, String link, Color color){
    this.title = title;
    this.link = link;
    this.color = color;
    // this.quiz = quiz;
  }
}

// class Questions{
//   String question = "", option1 = "", option2 = "", option3 = "", option4 = "", correctAnswer = "";
// }

List<Course> courses = [
  Course(
    "Dart for Android Developers", 
    "https://www.youtube.com/watch?v=wHXl4HeuwiM", 
    Colors.blue,
  ),

  Course(
    "Android for Beginners", 
    "https://www.youtube.com/watch?v=CRZPkwmoOpM", 
    Colors.green
  ),

  Course(
    "Android for Beginners", 
    "https://www.youtube.com/watch?v=CRZPkwmoOpM", 
    Colors.amber
  ),
];
