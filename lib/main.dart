import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dipak Prasad',
      home: Home(),
    );
  }
}
