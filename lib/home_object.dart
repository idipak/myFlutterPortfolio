import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CenteredObject extends StatelessWidget {
  const CenteredObject({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Container(
        padding: EdgeInsets.only(bottom: 20),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('images/dp3.jpg'),
            fit: BoxFit.fill
          )
        ),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: (){
              launch('https://twitter.com/Dipak_Prasad1');
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.github),
            onPressed: (){
              launch('https://github.com/idipak');
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.linkedin),
            onPressed: (){
              launch('https://www.linkedin.com/in/dipak-prasad-04848117/');
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.facebook),
            onPressed: (){
              launch('https://www.facebook.com/dpkprasad');
            },
          ),
        ],
      ),

      Center(
        child: Text(
        "Hi! I'm Dipak Prasad",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
        textScaleFactor: 3,
      ),
    ),

      Container(
        padding: EdgeInsets.only(top: 10, bottom: 15),
        width: MediaQuery.of(context).size.width *0.6,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'I’m a Teacher, Web Developer, IT Consultant and an App Developer with over 7 years of experience, specializing in front end development. Experienced with all stages of the development and IT Consultation.',
            style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
            )
          ),
        ),
      ),

      RaisedButton(
        elevation: 6,
        color: Colors.indigoAccent,
        child: Text('Read My Blog',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),

        ),
        onPressed: (){
            launch('https://blog.dipak.co.in/');
        },
      ),



    ],);
  }
}