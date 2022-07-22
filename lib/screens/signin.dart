import 'package:flutter/material.dart';
import 'dart:math';


class Signin extends StatefulWidget {
  static const String id = 'signin';

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  double get randHeight => Random().nextInt(100).toDouble();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black38,
        ),

        //title: Text(MyApp.title),
        title: Text('Sign In',style: Theme.of(context).textTheme.headline1,


        ),
        backgroundColor: Colors.brown[50],
        elevation: 0.0,
      ),
      body: Container(


        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,

          children:[
        SizedBox.fromSize(
        size: Size(450,450),

        child:
        Image.asset('images/signin/bg6.png'),

      ),

      Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 120, 0),
        child: Column(

          children:[
                      Text("Welcome to Krooki",style: Theme.of(context).textTheme.headline1),

                      Text("Signin / Signup with your phone number",style: Theme.of(context).textTheme.bodyText2),
              SizedBox(
                width: 0,
                height: 20,
              ),
              Text("Phone number",style: Theme.of(context).textTheme.bodyText2),


                 ],
                  ),
              ),

  ],
    ),
      ),
     );
  }
}