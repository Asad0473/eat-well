import 'package:eatwell_app/resource/assets.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class EatWellSplashScreen extends StatefulWidget {
  @override
  _EatWellSplashScreenState createState() => _EatWellSplashScreenState();
}

class _EatWellSplashScreenState extends State<EatWellSplashScreen> {
  void initState()
  {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => {
              Navigator.pushNamed(context, "GettingStartedScreen"


              ),
            });
  }
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body:OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return Scaffold(
              body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            Assets.SplashScreen_Image
                        ),
                        fit: BoxFit.cover
                    )),
              ),
            );
          }
          else
            return Scaffold(
              backgroundColor: Colors.black,
            );
        },
      ),
    );








  }
}
