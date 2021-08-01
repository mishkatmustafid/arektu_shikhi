import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Item 01')),
              height: 100,
              color: Colors.greenAccent,
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Item 02')),
              height: 100,
              color: Colors.blueGrey,
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Item 03')),
              height: 100,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Item 03')),
              height: 100,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Item 03')),
              height: 100,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Item 03')),
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
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