import 'package:flutter/material.dart';
import 'package:myapp/widgets/card_design1.dart';

class ServiceBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blueAccent,
          Colors.cyanAccent,
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
      ),
      child: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth > 1000) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardDesign1(),
                CardDesign1(),
                CardDesign1(),
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Center(
                child: Wrap(
                  children: [
                    CardDesign1(),
                    CardDesign1(),
                    CardDesign1(),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
