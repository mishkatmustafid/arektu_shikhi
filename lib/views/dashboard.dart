import 'package:arektu_shikhi/views/itemdetails.dart';
import 'package:arektu_shikhi/services/database.dart';
import 'package:arektu_shikhi/models/courses.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DatabaseService databaseService = DatabaseService();
  late Stream<QuerySnapshot> _courses;
  bool _isLoading = false;
  @override
  void initState() {
    print("initState start");
    databaseService.getCourses().then((snapshot) {
      setState(() {
        _courses = snapshot as Stream<QuerySnapshot<Object?>>;
        _isLoading = false;
      });
      print(_courses);
    });
    super.initState();
    print("initState end");
  }

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
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('courses').orderBy('index').snapshots(includeMetadataChanges: true),
          // stream: _courses,
          builder: (context, snapshot) {
          return (snapshot.hasData && !_isLoading)
          ? ListView.builder(
            // itemCount: courses.length,
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index){
              DocumentSnapshot documentSnapshot = snapshot.data!.docs[index]; 
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemView(
                              index: index,
                            ))),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      // (snapshot.data! as QuerySnapshot).docs[index].data['title'],
                      documentSnapshot['title'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Arial',
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                  height: 100,
                  color: Colors.blue[200],
                ),
              );
            }
          )
          :  Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );}
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/profile');
          // databaseService.getCourses();
          // print(_courses);
        },
        child: Text('Profile'),
      ),
    );
  }
}
