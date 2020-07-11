import 'package:flutter/material.dart';
import 'background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dipak Prasad',
      home: Scaffold(
        body: ParticleBackgroundPage(),
        ),
    );
  }
}