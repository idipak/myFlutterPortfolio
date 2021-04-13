import 'package:flutter/material.dart';
import 'package:myapp/block/service_block.dart';
import 'package:myapp/widgets/polymorphic_circle.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/background.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scrollbar(
      child: Scaffold(
        floatingActionButton: PolymorphicCircle(
          height: 60,
          width: 60,
          color2: Colors.greenAccent,
          color1: Colors.redAccent,
          child: IconButton(
            icon: Icon(Icons.mail),
            onPressed: () {
              launch('mailto:hello@dipak.co.in');
            },
          ),
        ),
        body: CustomScrollView(
          slivers: [
            //Hero section is in app bar
            SliverAppBar(
              title: Text('D.'),
              expandedHeight: size.height,
              flexibleSpace: FlexibleSpaceBar(
                background: ParticleBackgroundPage(),
              ),
            ),

            //Body Section
            SliverList(
              delegate: SliverChildListDelegate([
                ServiceBlock(),
                Container(
                  height: 800,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
