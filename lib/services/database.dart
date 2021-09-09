import 'package:arektu_shikhi/models/courses.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // Course _courseDataFromSnapshot(QuerySnapshot snapshot) {
  //   return Course(
  //     snapshot.data['title'],
  //     snapshot.data['link'],
  //   );
  // }

  // collection reference
  final CollectionReference courseCollection =
      FirebaseFirestore.instance.collection('courses');

  // get all courses
  Future<Stream> getCourses() async {
    return FirebaseFirestore.instance.collection('courses').snapshots();
  }

  // create course

}
