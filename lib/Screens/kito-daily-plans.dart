import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:flutter/material.dart';

class KitoDailyPlan extends StatefulWidget {
  @override
  _KitoDailyPlanState createState() => _KitoDailyPlanState();
}

class _KitoDailyPlanState extends State<KitoDailyPlan> {
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body:OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Column(
                        children: [
                          Container(
                            // height: MediaQuery.of(context).size.height *0.23,
                            // width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    Assets.BgKetoDailyPlan_Image,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        Assets.BackArrow,
                                        height: MediaQuery.of(context).size.height * 0.02,
                                        color: Col.black,
                                      ),
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: 'KETO ',
                                                style: TextStyle(
                                                  fontSize:
                                                  MediaQuery.of(context).size.height *
                                                      0.025,
                                                  fontFamily: Assets.Poppins_Bold,
                                                  color: Col.black,
                                                )),
                                            TextSpan(
                                              text: 'DAILY PLAN',
                                              style: TextStyle(
                                                  fontFamily: Assets.Poppins_Regular,
                                                  fontSize:
                                                  MediaQuery.of(context).size.height *
                                                      0.025,
                                                  color: Col.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        Assets.Cart_Image,
                                        height: MediaQuery.of(context).size.height * 0.028,
                                        color: Col.black,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30, top: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Select your preferred",
                                        style: TextStyle(
                                          color: Col.blue,
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.036,
                                          fontFamily: Assets.Poppins_Bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Menu Items",
                                        style: TextStyle(
                                            color: Col.blue,
                                            fontSize:
                                            MediaQuery.of(context).size.height * 0.03,
                                            fontFamily: Assets.Poppins_Bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30, top: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Choose from the list -28 Day Plan",
                                        style: TextStyle(
                                          color: Col.black.withOpacity(0.6),
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.015,
                                          fontFamily: Assets.Poppins_Regular,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Col.green,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff0BD27A),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.BreakFast_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Breakfast",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Bold,
                                            color: Col.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Col.lightgrey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.Lunch_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Lunch",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Regular,
                                            color: Col.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Col.lightgrey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: MediaQuery.of(context).size.height *
                                                    0.064,
                                                width: MediaQuery.of(context).size.width *
                                                    0.12,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.Dinner_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dinner",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Regular,
                                            color: Col.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Col.lightgrey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: MediaQuery.of(context).size.height *
                                                    0.064,
                                                width: MediaQuery.of(context).size.width *
                                                    0.12,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.Snack_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Snack",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Regular,
                                            color: Col.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Container(
                              height: 350,
                              // color: Colors.yellow,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (index, context) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 20),
                                      child: KitoDietPlanCard(),
                                    );
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Text(
                                  "Recommended",
                                  style: TextStyle(
                                      color: Col.blue,
                                      fontSize: MediaQuery.of(context).size.height * 0.025,
                                      fontFamily: Assets.Poppins_Bold),
                                ),
                              ],
                            ),
                          ),

                          // KitoDietPlanCard2(),

                          Container(
                            height: 130,
                            // color: Colors.yellow,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (index, context) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 10, left: 30,bottom: 10),
                                    child: KitoDietPlanCard2(),
                                  );
                                }),
                          ),
                        ],
                      ),
                    )),
              ),
            );
          }
          else
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Column(
                        children: [
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    Assets.BgKetoDailyPlan_Image,
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        Assets.BackArrow,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        color: Col.black,
                                      ),
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: 'KETO ',
                                                style: TextStyle(
                                                  fontSize:
                                                  MediaQuery.of(context).size.height *
                                                      0.06,
                                                  fontFamily: Assets.Poppins_Bold,
                                                  color: Col.black,
                                                )),
                                            TextSpan(
                                              text: 'DAILY PLAN',
                                              style: TextStyle(
                                                  fontFamily: Assets.Poppins_Regular,
                                                  fontSize:
                                                  MediaQuery.of(context).size.height *
                                                      0.06,
                                                  color: Col.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        Assets.Cart_Image,
                                        height: MediaQuery.of(context).size.height * 0.06,
                                        color: Col.black,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30, top: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Select your preferred",
                                        style: TextStyle(
                                          color: Col.blue,
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.06,
                                          fontFamily: Assets.Poppins_Bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Menu Items",
                                        style: TextStyle(
                                            color: Col.blue,
                                            fontSize:MediaQuery.of(context).size.height * 0.06,
                                            fontFamily: Assets.Poppins_Bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30, top: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Choose from the list -28 Day Plan",
                                        style: TextStyle(
                                          color: Col.black.withOpacity(0.6),
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.03,
                                          fontFamily: Assets.Poppins_Regular,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Col.green,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff0BD27A),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.BreakFast_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Breakfast",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Bold,
                                            color: Col.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Col.lightgrey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.Lunch_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Lunch",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Regular,
                                            color: Col.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Col.lightgrey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: MediaQuery.of(context).size.height *
                                                    0.064,
                                                width: MediaQuery.of(context).size.width *
                                                    0.12,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.Dinner_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dinner",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Regular,
                                            color: Col.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "Breakfast");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 29),
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Col.lightgrey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: MediaQuery.of(context).size.height *
                                                    0.064,
                                                width: MediaQuery.of(context).size.width *
                                                    0.12,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.Snack_icon_Image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Snack",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: Assets.Poppins_Regular,
                                            color: Col.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Container(
                              height: 350,
                              // color: Colors.yellow,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (index, context) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 20),
                                      child: KitoDietPlanCard(),
                                    );
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Recommended",
                                  style: TextStyle(
                                      color: Col.blue,
                                      fontSize: MediaQuery.of(context).size.height * 0.04,
                                      fontFamily: Assets.Poppins_Bold),
                                ),
                              ],
                            ),
                          ),

                          // KitoDietPlanCard2(),

                          Container(
                            height: 130,
                            // color: Colors.yellow,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (index, context) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 10, left: 30,bottom: 10),
                                    child: KitoDietPlanCard2(),
                                  );
                                }),
                          ),
                        ],
                      ),
                    )),
              ),
            );
        },
      ),
    );





  }
}

class KitoDietPlanCard extends StatefulWidget {
  @override
  _KitoDietPlanCardState createState() => _KitoDietPlanCardState();
}

class _KitoDietPlanCardState extends State<KitoDietPlanCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(overflow: Overflow.visible, children: [
      Container(
        height: 300, //MediaQuery.of(context).size.height * 0.42,
        width: 220, //MediaQuery.of(context).size.width * 0.56,
        decoration: BoxDecoration(
          color: Col.lightgreylite,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      Positioned(
        top: 200,
        left: 20,
        child: Text(
          "Avocado boats",
          style: TextStyle(
            fontFamily: Assets.Poppins_Bold,
            fontSize: 20,
          ),
        ),
      ),
      Positioned(
        top: 230,
        left: 20,
        right: 5,
        child: Text(
          "This food contains Gluten,dairy,egg,nuts",
          style: TextStyle(
            fontFamily: Assets.Poppins_Medium,
            fontSize: 12,
            color: Col.black,
          ),
        ),
      ),
      Positioned(
        top: 270,
        left: 20,
        child: Row(
          children: [
            Image.asset(
              Assets.Heart_icon_Image,
              height: 15,
            ),
            Text(
              "23",
              style: TextStyle(
                fontSize: 12,
                fontFamily: Assets.Poppins_Regular,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              Assets.Calendar_Image,
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 2),
              child: Text(
                "Sunday,4th May",
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: Assets.Poppins_Regular,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 170,
        top: 248,
        child: Container(
            height: 52,
            width: 50,
            decoration: BoxDecoration(
              color: Col.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.add_circle_outlined,
                color: Col.WHITE,
                size: 20,
              ),
            )),
      ),
      Positioned(
        left: 20,
        top: -15,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    Assets.KitoDiet_Image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

class KitoDietPlanCard2 extends StatefulWidget {
  @override
  _KitoDietPlanCard2State createState() => _KitoDietPlanCard2State();
}

class _KitoDietPlanCard2State extends State<KitoDietPlanCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:120,
      decoration: BoxDecoration(
        color: Col.lightgrey,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children:[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Col.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        Assets.pasta_Image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Keto Breakfast",
                  style: TextStyle(
                    fontFamily: Assets.Poppins_Bold,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Col.black,
                  ),
                ),
                Text(
                  "This food contains Gluten,dairy,egg,nuts",
                  style: TextStyle(
                    fontFamily: Assets.Poppins_Medium,
                    fontSize: 10,
                    color: Col.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 40,
                  width:  40,
                  decoration: BoxDecoration(
                    color: Col.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Icon(
                    Icons.add_circle_outlined,
                    color: Col.WHITE,
                    size: 22,
                  )

              ),
            ],
          ),
        ],
      ),
    );
  }
}
