import 'package:flutter/material.dart';
import 'dart:math';
import 'package:krooki/screens/onboard_screen.dart';


class Chooselang extends StatefulWidget {
  static const String id = 'Choose_lang';

  @override
  _ChooselangState createState() => _ChooselangState();
}

class _ChooselangState extends State<Chooselang> {
  double get randHeight => Random().nextInt(100).toDouble();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(

          children: <Widget>[

        SizedBox.fromSize(
        size: Size(500,560),
        child:
            Image.asset('images/chooselang/bg2.png'),

        ),
            SizedBox.fromSize(
              size: Size(300,123),
child:Column(

  children:[
        Text("Choose language",
            style: Theme.of(context).textTheme.headline1),

    ElevatedButton(
      onPressed:(){Navigator.pushNamed(context,Onboarding.id);}  ,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Row(
        children: <Widget>[
          Image.asset('images/chooselang/Layer 2.png',) ,
          Text("    Arabic",style: Theme.of(context).textTheme.headline2),
        ],
      ),
    ),
    ElevatedButton(
        onPressed:(){Navigator.pushNamed(context,Onboarding.id);}  ,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
        child: Row(
          children: <Widget>[
        Image.asset('images/chooselang/united-kingdom.png') ,
         Text("   English",style: Theme.of(context).textTheme.headline2),
    ],
        ),
        ),
],
      ),

      ),
      ],
    ),
      ),
    );

  }
}
