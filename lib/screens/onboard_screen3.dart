import 'package:flutter/material.dart';
import 'dart:math';
import 'package:krooki/screens/signin.dart';

class Onboarding3 extends StatefulWidget {
  static const String id = 'onboard_screen3';

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {


  double get randHeight => Random().nextInt(100).toDouble();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Column(

          children: <Widget>[

            SizedBox.fromSize(
              size: Size(500,500),
              child:
              Image.asset('images/onboardscreen/bg5.png'),

            ),
            SizedBox.fromSize(
                size: Size(300,112),
                child:Column(

                  children:[
                    Text("Onboarding Screen3",style: Theme.of(context).textTheme.headline1),

                    Text("Lorem ipsum dolor sit amet Cum laboriosam unde sed minus sint eos commodi molestias sit molestiae rerum",style: Theme.of(context).textTheme.bodyText1),
                    Image.asset('images/onboardscreen/3dots.png') ,

                  ],
                )
            ),




            TextButton(
              onPressed: () {

                Navigator.pushNamed(context,Signin.id);
              },
              style: TextButton.styleFrom(
                primary: Colors.orange,
              ),
              child: Text(
                'GET STARTED',
                style: TextStyle(fontSize: 16),
              ),
            ),
                  ],
                )
            ),





    );

  }
}
