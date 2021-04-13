import 'package:flutter/material.dart';

class PolymorphicCircle extends StatelessWidget {
  PolymorphicCircle(
      {required this.height,
      required this.width,
      this.color1 = Colors.white,
      this.color2 = Colors.greenAccent,
      this.child});
  final double height;
  final double width;
  final Color color1;
  final Color color2;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: [
          color1.withOpacity(0.4),
          color2.withOpacity(0.2),
        ]),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
