import 'package:flutter/material.dart';
import 'package:krooki/screens/welcome_screen.dart';
import 'package:krooki/screens/choose_lang.dart';
import 'package:krooki/screens/onboard_screen.dart';
import 'package:krooki/screens/onboard_screen2.dart';
import 'package:krooki/screens/onboard_screen3.dart';
import 'package:krooki/screens/signin.dart';

void main() => runApp(Krooki());

class Krooki extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
/*

        ThemeData customLightTheme() {

      TextTheme _customLightThemesTextTheme(TextTheme base) {
        return base.copyWith(
          headline1: base.headline1.copyWith(
            fontFamily: ‘Roboto’,
            fontSize: 22.0,
            color: Colors.green,
          ),
          headline6: base.headline6.copyWith(
              fontSize: 15.0,
              color: Colors.orange
          ),
          headline4: base.headline1.copyWith(
            fontSize: 24.0,
            color: Colors.white,
          ),
          headline3: base.headline1.copyWith(
            fontSize: 22.0,
            color: Colors.grey,
          ),
          caption: base.caption.copyWith(
            color: Color(0xFFCCC5AF),
          ),
          bodyText2: base.bodyText2.copyWith(color: Color(0xFF807A6B)),
          bodyText1: base.bodyText1.copyWith(color: Colors.brown),
        );
      }*/
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(

            headline1: TextStyle(color: Colors.black,fontSize:18,fontFamily:'SF Pro Display',fontWeight: FontWeight.bold),
            headline2: TextStyle(color: Colors.black,fontSize:16,fontFamily:'SF Pro Display',fontWeight: FontWeight.w400),
            bodyText1: TextStyle(color: Colors.black,fontSize:15,fontFamily:'SF Pro Display',fontWeight: FontWeight.normal),
            bodyText2: TextStyle(color: Colors.black,fontSize:14,fontFamily:'SF Pro Display',fontWeight: FontWeight.normal),

          subtitle1: TextStyle(color: Colors.pinkAccent),
          ),

      ),
      initialRoute:'welcome_screen' ,
      routes:{
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Chooselang.id: (context) =>Chooselang(),
        Onboarding.id: (context) =>Onboarding(),
        Onboarding2.id: (context) =>Onboarding2(),
        Onboarding3.id: (context) =>Onboarding3(),
        Signin.id: (context) =>Signin(),



      },
    );
  }
}