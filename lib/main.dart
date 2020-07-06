import 'package:flutter/material.dart';
import 'package:ok_boomer/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ok Boomer!',
      // TODO: Give a theme here, white, blue, grey
      home: HomeScreen(),
    );
  }
}

