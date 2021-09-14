import 'package:eatwell_app/Screens/break-fast.dart';
import 'package:eatwell_app/Screens/diet_category.dart';
import 'package:eatwell_app/Screens/eat_well_splash_screen.dart';
import 'package:eatwell_app/Screens/getting_started_screen.dart';
import 'package:eatwell_app/Screens/keto_diet.dart';
import 'package:eatwell_app/Screens/kito-daily-plans.dart';
import 'package:eatwell_app/Screens/low-calorie-diet.dart';
import 'package:eatwell_app/Screens/sign-in-screen.dart';
import 'package:eatwell_app/Screens/verification.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      initialRoute:"Verifcation",
        routes: {
          "GettingStartedScreen":(context)=> GettingStartedScreen(),
           "SplashScreen":(context)=>EatWellSplashScreen(),
          "SignIn":(context)=>SignIn(),
          "DietCategory":(context)=>DietCategory(),
          "kitoDiet":(context)=>KitoDiet(),
          "LowCalorieDiet":(context)=>LowCalorieDiet(),
          "kitodailyplan": (context)=>KitoDailyPlan(),
          "Breakfast":(context)=> BreakFast(),
          "Verifcation":(context)=> Verification(),
    }
    );
  }
}
