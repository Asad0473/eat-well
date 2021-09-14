import 'package:eatwell_app/resource/assets.dart';
import 'package:flutter/material.dart';

class Slide{
  final String first_image_url;
  final String title;
  final String second_image_url;

  Slide({
   @required this.first_image_url,
    @required this.title,
    @required   this.second_image_url,
  });

}
final slideList =[
  Slide(
    first_image_url: Assets.FindYourGoalScreen1_Image,
    title: "I want to Lose Weight",
    second_image_url: Assets.Nextarrow_Image,
  ),
  Slide(
      first_image_url: Assets.FindYourGoalScreen2_Image,
      title: "I want to Eat Healthy",
      second_image_url: Assets.Nextarrow_Image,
  ),
  Slide(
      first_image_url: Assets.FindYourGoalScreen3_Image,
      title: "I want to eat to manage Chronic Disease",
      second_image_url: Assets.Nextarrow_Image,
  ),
  Slide(
      first_image_url: Assets.FindYourGoalScreen4_Image,
      title: "I want a nutritionist assessment with an IMC Nutritionist",
      second_image_url: Assets.Nextarrow_Image,
  ),
];