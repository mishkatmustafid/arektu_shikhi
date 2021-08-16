import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseService {
  // ignore: unused_field
  final Future<FirebaseApp> _initializeApp = Firebase.initializeApp();
  // collection reference
  // final CollectionReference courseCollection =
  //     FirebaseFirestore.instance.collection('courses');
  // Stream courseStream =
  //     FirebaseFirestore.instance.collection('courses').snapshots();

  // get all courses

  Future<void> getCourses() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('courses').get();
    final allData = querySnapshot.docs.map((e) => e.data()).toList();
    try {
      print(allData);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addUser(Map<String, String> userMap, String userId) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .set(userMap)
        .catchError((e) => print(e));
  }
