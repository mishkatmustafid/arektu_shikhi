import 'package:arektu_shikhi/screens/itemdetails.dart';
// ignore: unused_import
import 'package:arektu_shikhi/services/database.dart';
import 'package:arektu_shikhi/models/courses.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // DatabaseService databaseService = DatabaseService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemScreen(
                course: courses[index],
              ))
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(courses[index].title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Arial',
                      letterSpacing: 0.8,
                  ),
                ),
              ),
              height: 100,
              color: courses[index].color,
            ),
          ),
        ),
        // child: ListView(
          // scrollDirection: Axis.vertical,
          // children: [
          //   for (var course in courses)  Container(
          //     margin: EdgeInsets.all(10),
          //     child: Center(
          //       child: Text(course.title,
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.w600,
          //           fontFamily: 'Arial',
          //           letterSpacing: 0.8,
          //         ),
          //       ),
          //     ),
          //     height: 100,
          //     color: Colors.lightGreen[400],
          //   ),
          // ],
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Center(child: Text('Item 01')),
            //   height: 100,
            //   color: Colors.greenAccent,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Center(child: Text('Item 02')),
            //   height: 100,
            //   color: Colors.blueGrey,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Center(child: Text('Item 03')),
            //   height: 100,
            //   color: Colors.red,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Center(child: Text('Item 03')),
            //   height: 100,
            //   color: Colors.red,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Center(child: Text('Item 03')),
            //   height: 100,
            //   color: Colors.red,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Center(child: Text('Item 03')),
            //   height: 100,
            //   color: Colors.red,
            // ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/profile');
        },
        child: Text('Profile'),
      ),
    );
  }
}
