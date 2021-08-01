import 'package:arektu_shikhi/screens/login.dart';
import 'package:arektu_shikhi/screens/signup.dart';
// import 'package:arektu_shikhi/itemview.dart';
import 'package:arektu_shikhi/screens/dashboard.dart';
import 'package:arektu_shikhi/screens/profile.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (context) => LogInScreen(),
  '/signup': (context) => SignUpScreen(),
  '/': (context) => Dashboard(),
  '/profile': (context) => Profile(),
};


// update routes following the flutter way