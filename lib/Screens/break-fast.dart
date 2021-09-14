import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BreakFast extends StatefulWidget {
  @override
  _BreakFastState createState() => _BreakFastState();
}

class _BreakFastState extends State<BreakFast> {
  @override
  Widget build(BuildContext context) {


    return  Scaffold(

      body:OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return Scaffold(
                backgroundColor: Col.WHITE,
                body: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                        children: [
                          Container(
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
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
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
                                                text: 'BREAKFAST',
                                                style: TextStyle(
                                                  fontSize:
                                                  MediaQuery.of(context).size.height *
                                                      0.022,
                                                  fontFamily: Assets.Poppins_Bold,
                                                  color: Col.black,
                                                )),
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
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30, right: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Keto Toast",
                                            style: TextStyle(
                                              color: Col.blue,
                                              fontSize:
                                              MediaQuery.of(context).size.width * 0.062,
                                              fontFamily: Assets.Poppins_Bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "It is a long established fact that a reader will be distracted by the readable content.",
                                        style: TextStyle(
                                          color: Col.black.withOpacity(0.8),
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.014,
                                          fontFamily: Assets.Poppins_Regular,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            Assets.Calendar_Image,
                                            height:
                                            MediaQuery.of(context).size.height * 0.022,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Sunday, 4th May",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Col.black,
                                              fontSize: MediaQuery.of(context).size.height *
                                                  0.016,
                                              fontFamily: Assets.Poppins_Regular,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "23",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                              MediaQuery.of(context).size.height * 0.015,
                                              fontFamily: Assets.Poppins_Regular,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            Assets.Heart_icon_Image,
                                            height:
                                            MediaQuery.of(context).size.height * 0.015,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Common Allergies",
                                            style: TextStyle(
                                                color: Col.blue,
                                                fontSize:
                                                MediaQuery.of(context).size.height *
                                                    0.021,
                                                fontFamily: Assets.Poppins_Bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "This food contains Gluten, dairy, egg, nuts",
                                            style: TextStyle(
                                                color: Col.black.withOpacity(0.8),
                                                fontSize:
                                                MediaQuery.of(context).size.height *
                                                    0.017,
                                                fontFamily: Assets.Poppins_Regular),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sizes",
                                      style: TextStyle(
                                        color: Col.lightgreylite,
                                        fontSize: MediaQuery.of(context).size.height * 0.016,
                                        fontFamily: Assets.Poppins_Medium,
                                      ),
                                    ),
                                    Text(
                                      "60z",
                                      style: TextStyle(
                                          color: Col.black,
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.034,
                                          fontFamily: Assets.Poppins_Bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Food Colorie",
                                      style: TextStyle(
                                        color: Col.lightgreylite,
                                        fontSize: MediaQuery.of(context).size.height * 0.016,
                                        fontFamily: Assets.Poppins_Medium,
                                      ),
                                    ),
                                    Text(
                                      "700cal",
                                      style: TextStyle(
                                          color: Col.black,
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.034,
                                          fontFamily: Assets.Poppins_Bold),
                                    ),
                                  ],
                                ),
                              ),

                              Image.asset(
                                Assets.Toast_Image,
                                height: 300,
                              ),
                              Container(),
                              Container(),
                            ],
                          ),






                          //
                          // Container(
                          //   height: MediaQuery.of(context).size.height * 0.35,
                          //   width: MediaQuery.of(context).size.width,
                          // ),
                          // Positioned(
                          //   left: 20,
                          //
                          //   child: Container(
                          //     width: MediaQuery.of(context).size.width*0.9,
                          //     height: 350,
                          //     color: Colors.yellow,
                          //     child: Row(
                          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //       children: [
                          //         Padding(
                          //           padding: const EdgeInsets.only(left: 30),
                          //           child: Column(
                          //             crossAxisAlignment: CrossAxisAlignment.start,
                          //             mainAxisAlignment: MainAxisAlignment.start,
                          //             children: [
                          //               Text(
                          //                 "Sizes",
                          //                 style: TextStyle(
                          //                   color: Col.lightgreylite,
                          //                   fontSize: MediaQuery.of(context).size.height * 0.02,
                          //                   fontFamily: Assets.Poppins_Medium,
                          //                 ),
                          //               ),
                          //               Text(
                          //                 "60z",
                          //                 style: TextStyle(
                          //                     color: Col.black,
                          //                     fontSize:
                          //                     MediaQuery.of(context).size.height * 0.038,
                          //                     fontFamily: Assets.Poppins_Bold),
                          //               ),
                          //               SizedBox(
                          //                 height: 20,
                          //               ),
                          //               Text(
                          //                 "Food Colorie",
                          //                 style: TextStyle(
                          //                   color: Col.lightgreylite,
                          //                   fontSize: MediaQuery.of(context).size.height * 0.02,
                          //                   fontFamily: Assets.Poppins_Medium,
                          //                 ),
                          //               ),
                          //               Text(
                          //                 "700cal",
                          //                 style: TextStyle(
                          //                     color: Col.black,
                          //                     fontSize:
                          //                     MediaQuery.of(context).size.height * 0.045,
                          //                     fontFamily: Assets.Poppins_Bold),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //         Column(
                          //           children:[
                          //             Image.asset(
                          //               Assets.Toast_Image,
                          //               height: MediaQuery.of(context).size.height * 0.45,
                          //             ),
                          //           ],
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),

                          // Stack(
                          //   overflow: Overflow.visible,
                          //   children: [
                          //     Container(
                          //       height: MediaQuery.of(context).size.height * 0.35,
                          //       width: MediaQuery.of(context).size.width,
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.37,
                          //       top: -(MediaQuery.of(context).size.height * 0.06),
                          //       //MediaQuery.of(context).size.height * 0.1-100,
                          //       child: Image.asset(
                          //         Assets.Toast_Image,
                          //         height: MediaQuery.of(context).size.height * 0.48,
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.07,
                          //       top: MediaQuery.of(context).size.height * 0.035,
                          //       child: Text(
                          //         "Sizes",
                          //         style: TextStyle(
                          //           color: Col.lightgreylite,
                          //           fontSize: MediaQuery.of(context).size.height * 0.02,
                          //           fontFamily: Assets.Poppins_Medium,
                          //         ),
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.065,
                          //       top: MediaQuery.of(context).size.height * 0.054,
                          //       child: Text(
                          //         "60z",
                          //         style: TextStyle(
                          //             color: Col.black,
                          //             fontSize: MediaQuery.of(context).size.height * 0.035,
                          //             fontFamily: Assets.Poppins_Bold),
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.07,
                          //       top: MediaQuery.of(context).size.height * 0.13,
                          //       child: Text(
                          //         "Food Colorie",
                          //         style: TextStyle(
                          //           color: Col.lightgreylite,
                          //           fontSize: MediaQuery.of(context).size.height * 0.02,
                          //           fontFamily: Assets.Poppins_Medium,
                          //         ),
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.065,
                          //       top: MediaQuery.of(context).size.height * 0.15,
                          //       child: Text(
                          //         "700z",
                          //         style: TextStyle(
                          //             color: Col.black,
                          //             fontSize: MediaQuery.of(context).size.height * 0.035,
                          //             fontFamily: Assets.Poppins_Bold),
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          Padding(
                            padding: EdgeInsets.only(
                                left: 30
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Ingredients",
                                  style: TextStyle(
                                      color: Col.blue,
                                      fontSize: MediaQuery.of(context).size.height * 0.023,
                                      fontFamily: Assets.Poppins_Bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (index, context) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Ingredients(),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              color: Col.green,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "ADD TO CART",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Col.WHITE.withOpacity(0.7),
                                  fontSize: MediaQuery.of(context).size.height * 0.02,
                                  fontFamily: Assets.Poppins_Regular,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                ));
          }
          else
            return Scaffold(
                backgroundColor: Col.WHITE,
                body: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                        children: [
                          Container(
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
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
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
                                                text: 'BREAKFAST',
                                                style: TextStyle(
                                                  fontSize:
                                                  MediaQuery.of(context).size.height *
                                                      0.05,
                                                  fontFamily: Assets.Poppins_Bold,
                                                  color: Col.black,
                                                )),
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
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30, right: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Keto Toast",
                                            style: TextStyle(
                                              color: Col.blue,
                                              fontSize:
                                              MediaQuery.of(context).size.width * 0.062,
                                              fontFamily: Assets.Poppins_Bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "It is a long established fact that a reader will be distracted by the readable content.",
                                        style: TextStyle(
                                          color: Col.black.withOpacity(0.8),
                                          fontSize:
                                          MediaQuery.of(context).size.width * 0.018,
                                          fontFamily: Assets.Poppins_Regular,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            Assets.Calendar_Image,
                                            height:
                                            MediaQuery.of(context).size.width * 0.022,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Sunday, 4th May",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Col.black,
                                              fontSize: MediaQuery.of(context).size.width *
                                                  0.016,
                                              fontFamily: Assets.Poppins_Regular,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "23",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                              MediaQuery.of(context).size.width * 0.015,
                                              fontFamily: Assets.Poppins_Regular,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            Assets.Heart_icon_Image,
                                            height:
                                            MediaQuery.of(context).size.width * 0.015,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Common Allergies",
                                            style: TextStyle(
                                                color: Col.blue,
                                                fontSize:
                                                MediaQuery.of(context).size.width *
                                                    0.031,
                                                fontFamily: Assets.Poppins_Bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "This food contains Gluten, dairy, egg, nuts",
                                            style: TextStyle(
                                                color: Col.black.withOpacity(0.8),
                                                fontSize:
                                                MediaQuery.of(context).size.width *
                                                    0.017,
                                                fontFamily: Assets.Poppins_Regular),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sizes",
                                      style: TextStyle(
                                        color: Col.lightgreylite,
                                        fontSize: MediaQuery.of(context).size.width * 0.016,
                                        fontFamily: Assets.Poppins_Medium,
                                      ),
                                    ),
                                    Text(
                                      "60z",
                                      style: TextStyle(
                                          color: Col.black,
                                          fontSize:
                                          MediaQuery.of(context).size.width * 0.034,
                                          fontFamily: Assets.Poppins_Bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Food Colorie",
                                      style: TextStyle(
                                        color: Col.lightgreylite,
                                        fontSize: MediaQuery.of(context).size.width * 0.016,
                                        fontFamily: Assets.Poppins_Medium,
                                      ),
                                    ),
                                    Text(
                                      "700cal",
                                      style: TextStyle(
                                          color: Col.black,
                                          fontSize:
                                          MediaQuery.of(context).size.width * 0.034,
                                          fontFamily: Assets.Poppins_Bold),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                Assets.Toast_Image,
                                height: 400,
                              ),
                            ],
                          ),






                          //
                          // Container(
                          //   height: MediaQuery.of(context).size.height * 0.35,
                          //   width: MediaQuery.of(context).size.width,
                          // ),
                          // Positioned(
                          //   left: 20,
                          //
                          //   child: Container(
                          //     width: MediaQuery.of(context).size.width*0.9,
                          //     height: 350,
                          //     color: Colors.yellow,
                          //     child: Row(
                          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //       children: [
                          //         Padding(
                          //           padding: const EdgeInsets.only(left: 30),
                          //           child: Column(
                          //             crossAxisAlignment: CrossAxisAlignment.start,
                          //             mainAxisAlignment: MainAxisAlignment.start,
                          //             children: [
                          //               Text(
                          //                 "Sizes",
                          //                 style: TextStyle(
                          //                   color: Col.lightgreylite,
                          //                   fontSize: MediaQuery.of(context).size.height * 0.02,
                          //                   fontFamily: Assets.Poppins_Medium,
                          //                 ),
                          //               ),
                          //               Text(
                          //                 "60z",
                          //                 style: TextStyle(
                          //                     color: Col.black,
                          //                     fontSize:
                          //                     MediaQuery.of(context).size.height * 0.038,
                          //                     fontFamily: Assets.Poppins_Bold),
                          //               ),
                          //               SizedBox(
                          //                 height: 20,
                          //               ),
                          //               Text(
                          //                 "Food Colorie",
                          //                 style: TextStyle(
                          //                   color: Col.lightgreylite,
                          //                   fontSize: MediaQuery.of(context).size.height * 0.02,
                          //                   fontFamily: Assets.Poppins_Medium,
                          //                 ),
                          //               ),
                          //               Text(
                          //                 "700cal",
                          //                 style: TextStyle(
                          //                     color: Col.black,
                          //                     fontSize:
                          //                     MediaQuery.of(context).size.height * 0.045,
                          //                     fontFamily: Assets.Poppins_Bold),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //         Column(
                          //           children:[
                          //             Image.asset(
                          //               Assets.Toast_Image,
                          //               height: MediaQuery.of(context).size.height * 0.45,
                          //             ),
                          //           ],
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),

                          // Stack(
                          //   overflow: Overflow.visible,
                          //   children: [
                          //     Container(
                          //       height: MediaQuery.of(context).size.height * 0.35,
                          //       width: MediaQuery.of(context).size.width,
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.37,
                          //       top: -(MediaQuery.of(context).size.height * 0.06),
                          //       //MediaQuery.of(context).size.height * 0.1-100,
                          //       child: Image.asset(
                          //         Assets.Toast_Image,
                          //         height: MediaQuery.of(context).size.height * 0.48,
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.07,
                          //       top: MediaQuery.of(context).size.height * 0.035,
                          //       child: Text(
                          //         "Sizes",
                          //         style: TextStyle(
                          //           color: Col.lightgreylite,
                          //           fontSize: MediaQuery.of(context).size.height * 0.02,
                          //           fontFamily: Assets.Poppins_Medium,
                          //         ),
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.065,
                          //       top: MediaQuery.of(context).size.height * 0.054,
                          //       child: Text(
                          //         "60z",
                          //         style: TextStyle(
                          //             color: Col.black,
                          //             fontSize: MediaQuery.of(context).size.height * 0.035,
                          //             fontFamily: Assets.Poppins_Bold),
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.07,
                          //       top: MediaQuery.of(context).size.height * 0.13,
                          //       child: Text(
                          //         "Food Colorie",
                          //         style: TextStyle(
                          //           color: Col.lightgreylite,
                          //           fontSize: MediaQuery.of(context).size.height * 0.02,
                          //           fontFamily: Assets.Poppins_Medium,
                          //         ),
                          //       ),
                          //     ),
                          //     Positioned(
                          //       left: MediaQuery.of(context).size.width * 0.065,
                          //       top: MediaQuery.of(context).size.height * 0.15,
                          //       child: Text(
                          //         "700z",
                          //         style: TextStyle(
                          //             color: Col.black,
                          //             fontSize: MediaQuery.of(context).size.height * 0.035,
                          //             fontFamily: Assets.Poppins_Bold),
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          Padding(
                            padding: EdgeInsets.only(
                                left: 30
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Ingredients",
                                  style: TextStyle(
                                      color: Col.blue,
                                      fontSize: MediaQuery.of(context).size.width * 0.023,
                                      fontFamily: Assets.Poppins_Bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.2,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 8,
                                  itemBuilder: (index, context) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Ingredients1(),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width * 0.07,
                            width: MediaQuery.of(context).size.height * 0.5,
                            decoration: BoxDecoration(
                              color: Col.green,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "ADD TO CART",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Col.WHITE.withOpacity(0.7),
                                  fontSize: MediaQuery.of(context).size.width * 0.02,
                                  fontFamily: Assets.Poppins_Regular,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                ));
        },
      ),
    );
  }
}



class Ingredients1 extends StatefulWidget {
  @override
  _Ingredients1State createState() => _Ingredients1State();
}

class _Ingredients1State extends State<Ingredients1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:100,
          width: 120,
          decoration: BoxDecoration(
            color: Color(0xffEFEFEF),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.BowlEgg_Image,
                height: 80,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Egg",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.022,
              fontFamily: Assets.Poppins_Bold),
        ),
      ],
    );
  }
}


class Ingredients extends StatefulWidget {
  @override
  _IngredientsState createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:100,
          width: 120,
          decoration: BoxDecoration(
            color: Color(0xffEFEFEF),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.BowlEgg_Image,
                height: 80,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Egg",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.022,
              fontFamily: Assets.Poppins_Bold),
        ),
      ],
    );
  }
}
