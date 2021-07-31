import 'package:arektu_shikhi/login.dart';
import 'package:arektu_shikhi/signup.dart';
// import 'package:arektu_shikhi/itemview.dart';
import 'package:arektu_shikhi/dashboard.dart';
import 'package:arektu_shikhi/profile.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (context) => LogInScreen(),
  '/signup': (context) => SignUpScreen(),
  '/': (context) => Dashboard(),
  '/profile': (context) => Profile(),
};


// update routes following the flutter way