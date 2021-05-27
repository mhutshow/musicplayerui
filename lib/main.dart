import 'package:flutter/material.dart';
import 'package:musicplayer/Screens/HomeScreen.dart';
import 'package:musicplayer/Screens/PlayerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
