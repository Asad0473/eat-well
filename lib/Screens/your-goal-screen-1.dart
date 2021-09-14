import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:flutter/material.dart';

class YourGoalScreen extends StatefulWidget {
  @override
  YourGoalScreenState createState() => YourGoalScreenState();
}
int _current =0;
class YourGoalScreenState extends State<YourGoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Image.asset(
              Assets.FindYourGoalScreen1_Image,
            ),
          ),
          SizedBox(
              height: 20
          ),
          Text(
            "I want to Lose Weight",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Product",
              fontSize: MediaQuery.of(context).size.height * 0.028,
              fontWeight: FontWeight.bold,
              color: Col.blue,
            ),
          ),
        ],
      );
  }
}

