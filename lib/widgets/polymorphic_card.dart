import 'package:flutter/material.dart';

class PolymorphicCard extends StatelessWidget {
  PolymorphicCard({required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white.withOpacity(0.08)),
          gradient: LinearGradient(colors: [
            Colors.white.withOpacity(0.2),
            Colors.white.withOpacity(0.05)
          ])),
    );
  }
}
