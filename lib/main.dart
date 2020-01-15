import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Let's Buy",
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}
