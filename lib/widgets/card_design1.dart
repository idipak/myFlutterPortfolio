import 'package:flutter/material.dart';
import 'package:myapp/widgets/polymorphic_card.dart';
import 'package:myapp/widgets/polymorphic_circle.dart';

class CardDesign1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 300,
      child: Stack(
        children: [
          Positioned(
              top: 25,
              left: 10,
              child: PolymorphicCircle(
                height: 80,
                width: 80,
              )),
          Positioned(
              bottom: 10,
              right: 5,
              child: PolymorphicCircle(
                height: 30,
                width: 30,
              )),
          Center(
            child: PolymorphicCard(
              height: 300,
              width: 250,
            ),
          )
        ],
      ),
    );
  }
}
