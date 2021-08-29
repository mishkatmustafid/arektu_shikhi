import 'package:cloud_firestore/cloud_firestore.dart';

class UserAuth {
  Future<void> addUser(Map<String, String> userMap, String userId) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .set(userMap)
        .catchError((e) => print(e));
  }

  Future<void> getUser(Map<String, String> user) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .where("username", isEqualTo: user["phone"])
          .get();
          // .doc(username)
          // .get();
    } catch (e) {
      print(e);
    }
  }
}
