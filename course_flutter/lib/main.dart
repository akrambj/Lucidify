import 'package:flutter/material.dart';
import 'package:lucidify/searchpage.dart';
import 'package:lucidify/profile.dart';
import 'package:lucidify/login.dart';
import 'package:lucidify/firstpage.dart';
import 'package:lucidify/signUp.dart';
import 'package:lucidify/journal.dart';
import 'package:lucidify/dashbord.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      'Login': (context) => LoginPage(),
      'Sign Up': (context) => Signup(),
      'Explore': (context) => SearchPage(),
      'Journal': (context) => Journal(),
      'Profile': (context) => Profile()
    }, home: HomePage());
  }
}
