import 'package:flutter/material.dart';
import 'dart:math';
import 'package:krooki/screens/onboard_screen2.dart';
import 'package:krooki/screens/onboard_screen3.dart';

class Onboarding extends StatefulWidget {
  static const String id = 'onboard_screen';

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  double get randHeight => Random().nextInt(100).toDouble();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox.fromSize(
              size: Size(400, 500),
              child: Image.asset('images/onboardscreen/bg3.png'),
            ),
            SizedBox.fromSize(
                size: Size(488, 112),
                child: Column(
                  children: [
                    Text(
                      "Onboarding Screen1",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text("Lorem ipsum dolor sit amet Cum laboriosam unde sed minus sint eos commodi molestias sit molestiae rerum",
                        style: Theme.of(context).textTheme.bodyText1),
                    Image.asset('images/onboardscreen/3dots.png'),
                  ],
                )),
            SizedBox.fromSize(
                size: Size(488, 60),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Onboarding3.id);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Text("Skip",style: Theme.of(context).textTheme.bodyText2),
                    ),
                    SizedBox(
                      width: 250.0,
                      height: 0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Onboarding2.id);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Row(
                        children: <Widget>[
                          Text("Next",style: Theme.of(context).textTheme.bodyText2),
                          Image.asset('images/onboardscreen/left-arrow.png'),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
