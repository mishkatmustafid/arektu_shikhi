import 'package:arektu_shikhi/views/login.dart';
import 'package:arektu_shikhi/views/signup.dart';
import 'package:arektu_shikhi/views/dashboard.dart';
import 'package:arektu_shikhi/views/profile.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (context) => LogInView(),
  '/signup': (context) => SignUpView(),
  '/': (context) => Dashboard(),
  '/profile': (context) => Profile(),
};


// update routes following the flutter way