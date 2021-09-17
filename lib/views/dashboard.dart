import 'package:arektu_shikhi/services/database.dart';
import 'package:arektu_shikhi/views/itemdetails.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'widgets/cards.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Stream<QuerySnapshot> _courses = DatabaseService().coursesList();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Courses',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/bg_03.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: StreamBuilder<QuerySnapshot>(
            stream: _courses,
            builder: (context, snapshot) {
              return (!snapshot.hasData || _isLoading)
                  ? Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
                        return GestureDetector(
                          onTap: () {
                            print(documentSnapshot.data().toString());
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ItemView(snapshot: documentSnapshot)));
                          },
                          child: CourseCard(documentSnapshot: documentSnapshot),
                        );
                      });
            }
          ),
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
