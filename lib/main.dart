import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signal/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',

      home: HomePage(),
    );
  }
}
