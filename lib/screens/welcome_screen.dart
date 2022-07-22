import 'package:flutter/material.dart';
import 'package:krooki/screens/choose_lang.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(

            children: <Widget>[


        Container(
        decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('images/welcomescreen/bg1.png'),
        fit: BoxFit.cover),
    ),
    ),
    Align(
    alignment: Alignment.center,
    child:  Image.asset('images/welcomescreen/Logo_krooqi@2x.png'),
    ),

    GestureDetector(
    onTap: () {Navigator.pushNamed(context,Chooselang.id); }
    ),
    ],
        ),
    );

  }
}
