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
      
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      ),
    );
  }
}