import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ), 
          onPressed: () => Navigator.pop(context, false)
        ),
        title: Text('Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: SizedBox(
              height: 100,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset("assets/img/user.png"),
                ),
                // backgroundImage: AssetImage("assets/img/user.png"),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(5),
            color: Colors.grey[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Alex',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text('Full Name: Alex Murphy')
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text('Phone Number: +880 1234-123456')
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text('Class: 4th')
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  child: Text('Progress',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: LinearPercentIndicator(
                    width: 350,
                    lineHeight: 24.0,
                    percent: 0.4,
                    center: Text(
                      '40%',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    progressColor: Colors.blue,
                    backgroundColor: Colors.grey[300],
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                ),
                SizedBox(height: 20,),
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Item A')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: const Center(child: Text('Item B')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Item C')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Item D')),
                    ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[500],
                    //   child: const Center(child: Text('Item E')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[100],
                    //   child: const Center(child: Text('Item F')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[600],
                    //   child: const Center(child: Text('Item G')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[500],
                    //   child: const Center(child: Text('Item H')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[100],
                    //   child: const Center(child: Text('Item I')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[600],
                    //   child: const Center(child: Text('Item j')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[500],
                    //   child: const Center(child: Text('Item K')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[100],
                    //   child: const Center(child: Text('Item L')),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}