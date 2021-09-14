import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:flutter/material.dart';

import 'keto_diet.dart';


class LowCalorieDiet extends StatefulWidget {
  @override
  _LowCalorieDiet createState() => _LowCalorieDiet();
}

class _LowCalorieDiet extends State<LowCalorieDiet> {


  List<String> day =["7","30"];
  List<String> rupees =["666","2233"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Col.yellow,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "DietCategory");
                      },
                      child: Image.asset(
                        Assets.BackArrow,
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: Col.WHITE,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'LOSE ',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height * 0.026,
                                fontFamily: Assets.Poppins_Bold,
                              )),
                          TextSpan(
                              text: 'WEIGHT',
                              style: TextStyle(
                                  fontFamily: Assets.Poppins_Regular,
                                  fontSize:
                                  MediaQuery.of(context).size.height * 0.026,
                                  color: Col.WHITE.withOpacity(0.8))),
                        ],
                      ),
                    ),
                    Image.asset(
                      Assets.Cart_Image,
                      height: MediaQuery.of(context).size.height * 0.03,
                      color: Col.WHITE,
                    ),
                  ],
                ),
              ),
              body: Container(
                color: Col.WHITE,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.32,
                            color: Col.yellow,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                  "LOW CALORIE",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height * 0.065,
                                        color: Col.WHITE,
                                        fontFamily: Assets.Poppins_Bold,
                                        shadows: [
                                          Shadow(
                                            offset: Offset(0.4, 0.4),
                                            color: Colors.grey,
                                            blurRadius: 10,
                                          ),
                                        ]),
                                  ),
                                  Stack(
                                    overflow: Overflow.visible,
                                    children:[
                                      Positioned(
                                        top: -(MediaQuery.of(context).size.height * 0.04),
                                        right: -(MediaQuery.of(context).size.width * 0.15),
                                        child: Text(
                                          "DIET",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.height * 0.065,
                                              color: Col.WHITE,
                                              fontFamily: Assets.Poppins_Bold,
                                              shadows: [
                                                Shadow(
                                                  offset: Offset(0.4, 0.4),
                                                  color: Colors.grey,
                                                  blurRadius: 10,
                                                ),
                                              ]),
                                        ),
                                      ),
                                      Container(),
                                    ]
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.02),
                            child: Image.asset(
                              Assets.LowCalorieDietDish_Image,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Low Calorie Meal Plans",
                                  style: TextStyle(
                                      fontFamily: Assets.Poppins_Bold,
                                      color: Col.blue,
                                      fontSize: MediaQuery.of(context).size.height * 0.026
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20, top: 4),
                              child: Text(
                                "A healthy ketogenic diet should consist of about 75% fat, 10-30% protein and no more than 5% or 20 to 50 grams of carbs per day. Focus on high-fat, low-carb foods like eggs, meats, dairy and low-carb vegetables, as well as sugar-free beverages. Be sure to restrict highly processed items and unhealthy fats.",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.014,
                                    color: Col.black,
                                    fontFamily: Assets.Poppins_Medium
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Choose Plan",
                                  style: TextStyle(
                                    fontFamily: Assets.Poppins_Bold,
                                    fontSize: MediaQuery.of(context).size.height * 0.026,
                                    color: Col.blue,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: ListView.builder(
                                  itemCount: 2,
                                  itemBuilder: (context,index){
                                    return
                                      InkWell(
                                          onTap: () {
                                            // Navigator.pushNamed(context, "kitodailyplan");
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: DietCardPlan1(
                                              days: day[index],
                                              rupees:rupees[index],
                                            ),
                                          ));
                                  }
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          else
          {
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Col.yellow,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "DietCategory");
                      },
                      child: Image.asset(
                        Assets.BackArrow,
                        height: MediaQuery.of(context).size.height * 0.05,
                        color: Col.WHITE,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'LOSE ',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height * 0.04,
                                fontFamily: Assets.Poppins_Bold,
                              )),
                          TextSpan(
                              text: 'WEIGHT',
                              style: TextStyle(
                                  fontFamily: Assets.Poppins_Regular,
                                  fontSize:
                                  MediaQuery.of(context).size.height * 0.04,
                                  color: Col.WHITE.withOpacity(0.8))),
                        ],
                      ),
                    ),
                    Image.asset(
                      Assets.Cart_Image,
                      height: MediaQuery.of(context).size.height * 0.05,
                      color: Col.WHITE,
                    ),
                  ],
                ),
              ),
              body: Container(
                color: Col.WHITE,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.95,
                            color: Col.yellow,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "LOW CALORIE",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height * 0.23,
                                        color: Col.WHITE,
                                        fontFamily: Assets.Poppins_Bold,
                                        shadows: [
                                          Shadow(
                                            offset: Offset(0.4, 0.4),
                                            color: Colors.grey,
                                            blurRadius: 10,
                                          ),
                                        ]),
                                  ),
                                  Stack(
                                      overflow: Overflow.visible,
                                      children:[
                                        Positioned(
                                          top: -(MediaQuery.of(context).size.height * 0.14),
                                          right: -(MediaQuery.of(context).size.width * 0.15),
                                          child: Text(
                                            "DIET",
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.height * 0.23,
                                                color: Col.WHITE,
                                                fontFamily: Assets.Poppins_Bold,
                                                shadows: [
                                                  Shadow(
                                                    offset: Offset(0.4, 0.4),
                                                    color: Colors.grey,
                                                    blurRadius: 10,
                                                  ),
                                                ]),
                                          ),
                                        ),
                                        Container(),
                                      ]
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
                            child: Image.asset(
                              Assets.LowCalorieDietDish_Image,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Low Calorie Meal Plans",
                                  style: TextStyle(
                                      fontFamily: Assets.Poppins_Bold,
                                      color: Col.blue,
                                      fontSize: MediaQuery.of(context).size.height * 0.05
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20, top: 4),
                              child: Text(
                                "A healthy ketogenic diet should consist of about 75% fat, 10-30% protein and no more than 5% or 20 to 50 grams of carbs per day. Focus on high-fat, low-carb foods like eggs, meats, dairy and low-carb vegetables, as well as sugar-free beverages. Be sure to restrict highly processed items and unhealthy fats.",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.02,
                                    color: Col.black,
                                    fontFamily: Assets.Poppins_Medium
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Choose Plan",
                                  style: TextStyle(
                                    fontFamily: Assets.Poppins_Bold,
                                    fontSize: MediaQuery.of(context).size.height * 0.05,
                                    color: Col.blue,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.width * 0.2,
                              child: ListView.builder(
                                  itemCount: 2,
                                  itemBuilder: (context,index){
                                    return
                                      InkWell(
                                          onTap: () {
                                            // Navigator.pushNamed(context, "kitodailyplan");
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: DietCardPlan2(
                                              days: day[index],
                                              rupees:rupees[index],
                                            ),
                                          ));
                                  }
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class DietCardPlan1 extends StatefulWidget {


  String days;
  String rupees;
  DietCardPlan1({this.days,this.rupees});



  @override
  _DietCardPlan1State createState() => _DietCardPlan1State();
}

class _DietCardPlan1State extends State<DietCardPlan1> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage(
              Assets.ChoosePlan_Image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Low Colorie",
                    style: TextStyle(
                      color: Col.WHITE,
                      fontSize:MediaQuery.of(context).size.height * 0.04,
                      fontFamily:Assets.Poppins_Bold,
                    ),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        top:-(MediaQuery.of(context).size.height* 0.02),
                        child: Text(
                          "Full  Day",
                          style: TextStyle(
                            color: Col.WHITE.withOpacity(0.5),
                            letterSpacing: 4.0,
                            fontSize: MediaQuery.of(context).size.height * 0.024,
                             fontFamily: Assets.Poppins_Bold,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.Calendar_Image,
                              color: Col.yellow,
                              height:  MediaQuery.of(context).size.height * 0.028,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              " ${widget.days} Days",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Col.WHITE,
                                fontSize: MediaQuery.of(context).size.height * 0.032,
                                fontFamily: Assets.Poppins_Bold,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.end,
                children:[
                  Text(
                    "${widget.rupees}",
                    style: TextStyle(
                      color: Col.yellow,
                      fontSize: MediaQuery.of(context).size.height * 0.065,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                          top:-(MediaQuery.of(context).size.height * 0.017),
                          child: Text(
                            "SAR",
                            style: TextStyle(
                              color: Col.WHITE,
                              fontSize: MediaQuery.of(context).size.height * 0.02,
                              fontFamily: Assets.Poppins_Bold,
                            ),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}



class DietCardPlan2 extends StatefulWidget {


  String days;
  String rupees;
  DietCardPlan2({this.days,this.rupees});



  @override
  _DietCardPlan2State createState() => _DietCardPlan2State();
}

class _DietCardPlan2State extends State<DietCardPlan2> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage(
              Assets.ChoosePlan_Image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Low Colorie",
                    style: TextStyle(
                      color: Col.WHITE,
                      fontSize:MediaQuery.of(context).size.height * 0.1,
                      fontFamily:Assets.Poppins_Bold,
                    ),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        top:-(MediaQuery.of(context).size.height * 0.04),
                        child: Text(
                          "Full  Day",
                          style: TextStyle(
                            color: Col.WHITE.withOpacity(0.5),
                            letterSpacing: 4.0,
                            fontSize: MediaQuery.of(context).size.height * 0.05,
                            fontFamily: Assets.Poppins_Bold,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.Calendar_Image,
                              height:  MediaQuery.of(context).size.height * 0.1,
                              fit: BoxFit.fill,
                              color: Col.yellow,
                            ),
                            Text(
                              " ${widget.days} Days",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Col.WHITE,
                                fontSize: MediaQuery.of(context).size.height * 0.1,
                                fontFamily: Assets.Poppins_Bold,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.end,
                children:[
                  Text(
                    "${widget.rupees}",
                    style: TextStyle(
                      color: Col.yellow,
                      fontSize: MediaQuery.of(context).size.height * 0.3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                          top:-(MediaQuery.of(context).size.height * 0.08),
                          child: Text(
                            "SAR",
                            style: TextStyle(
                              color: Col.WHITE,
                              fontSize: MediaQuery.of(context).size.height * 0.07,
                              fontFamily: Assets.Poppins_Bold,
                            ),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}












// class LowCalorieDiet extends StatefulWidget {
//   @override
//   _LowCalorieDiet createState() => _LowCalorieDiet();
// }
//
// class _LowCalorieDiet extends State<LowCalorieDiet> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Col.yellow,
//         elevation: 0,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             InkWell(
//               onTap: (){
//                 Navigator.pushNamed(context,"DietCategory");
//               },
//               child: Image.asset(
//                 Assets.BackArrow,
//                 height: MediaQuery.of(context).size.height * 0.03,
//                 color: Colors.white,
//               ),
//             ),
//             RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                       text: 'LOSE ',
//                       style: TextStyle(
//                         fontSize: MediaQuery.of(context).size.height * 0.026,
//                         fontFamily: Assets.Poppins_Bold,
//                       )),
//                   TextSpan(
//                       text: 'WEIGHT',
//                       style: TextStyle(
//                         fontFamily: Assets.Poppins_Regular,
//                         fontSize: MediaQuery.of(context).size.height * 0.026,
//                           color: Col.WHITE.withOpacity(0.9),
//                       )),
//                 ],
//               ),
//             ),
//             Image.asset(
//               Assets.Cart_Image,
//               height: MediaQuery.of(context).size.height * 0.029,
//               color: Col.WHITE,
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         color: Col.WHITE,
//         child:SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height * 0.28,
//                     width: MediaQuery.of(context).size.width,
//                     color: Col.yellow,
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Container(
//                       height: MediaQuery.of(context).size.height * 0.4,
//                       width: MediaQuery.of(context).size.width *0.84,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(
//                            Assets.LowCalorieDietDish_Image,
//                           ),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: -(MediaQuery.of(context).size.height * 0.01),
//                     left: MediaQuery.of(context).size.width * 0.08,
//                     child: Text(
//                       "LOW CALORIE",
//                       style: TextStyle(
//                           fontSize:
//                           MediaQuery.of(context).size.width * 0.12,
//                           color: Col.WHITE,
//                           fontFamily: Assets.Poppins_Bold,
//                           shadows: [
//                             Shadow(
//                               offset:Offset(0.4, 0.4),
//                               color: Col.grey,
//                               blurRadius: 3,
//                             ),
//                           ]
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: MediaQuery.of(context).size.height * 0.05,
//                     left: MediaQuery.of(context).size.width * 0.38,
//                     child: Text(
//                       "DIET",
//                       style: TextStyle(
//                           fontSize:
//                           MediaQuery.of(context).size.width * 0.12,
//                           color: Col.WHITE,
//                           fontFamily: Assets.Poppins_Bold,
//                           shadows: [
//                             Shadow(
//                               offset:Offset(0.4, 0.4),
//                               color: Col.grey,
//                               blurRadius: 3,
//                             ),
//                           ]
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 30),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           "Low Calorie Meal Plans",
//                           style: TextStyle(
//                             fontFamily: Assets.Poppins_Bold,
//                             fontSize: MediaQuery.of(context).size.height *0.027,
//                             color: Col.blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 20, top: 4),
//                       child: Text(
//                         "A healthy ketogenic diet should consist of about 75% fat, 10-30% protein and no more than 5% or 20 to 50 grams of carbs per day. Focus on high-fat, low-carb foods like eggs, meats, dairy and low-carb vegetables, as well as sugar-free beverages. Be sure to restrict highly processed items and unhealthy fats.",
//                         style: TextStyle(
//                             fontSize: MediaQuery.of(context).size.height *0.015,
//                             color: Col.black,
//                             fontFamily: Assets.Poppins_Medium
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Choose Plan",
//                           style: TextStyle(
//                             fontFamily: Assets.Poppins_Bold,
//                             fontWeight: FontWeight.bold,
//                             fontSize: MediaQuery.of(context).size.height *0.024,
//                             color: Col.blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     DietCardPlan1(),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     DietCardPlan2(),
//
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DietCardPlan1 extends StatefulWidget {
//   @override
//   _DietCardPlan1State createState() => _DietCardPlan1State();
// }
//
// class _DietCardPlan1State extends State<DietCardPlan1> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Stack(children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.18,
//             width: MediaQuery.of(context).size.width * 0.80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(14),
//               ),
//               image: DecorationImage(
//                 image: AssetImage(
//                   Assets.ChoosePlan_Image,
//                 ),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             left: MediaQuery.of(context).size.width * 0.05,
//             top:  MediaQuery.of(context).size.height * 0.036,
//             child: Text(
//               "Low Colorie",
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: Col.WHITE,
//                 fontSize: MediaQuery.of(context).size.height * 0.032,
//                 fontFamily:Assets.Poppins_Bold,
//               ),
//             ),
//           ),
//           Positioned(
//             left: MediaQuery.of(context).size.width * 0.05,
//             top:  MediaQuery.of(context).size.height * 0.076,
//             child: Text(
//               "Full  Day",
//               style: TextStyle(
//                 color: Col.WHITE.withOpacity(0.5),
//                 letterSpacing: 4.0,
//                 fontSize: MediaQuery.of(context).size.height * 0.019,
//                 fontFamily: Assets.Poppins_Bold,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.036,
//             left: MediaQuery.of(context).size.width * 0.53,
//             child: Text(
//               "666",
//               style: TextStyle(
//                 color: Col.yellow,
//                 fontSize: MediaQuery.of(context).size.height * 0.068,
//                 // fontFamily: "Product",
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.1,
//             left:  MediaQuery.of(context).size.width * 0.67,
//             child: Text(
//               "SAR",
//               style: TextStyle(
//                 color: Col.WHITE,
//                 fontSize: MediaQuery.of(context).size.height * 0.017,
//                 fontFamily: Assets.Poppins_Bold,
//               ),
//             ),
//           ),
//           Positioned(
//             left: MediaQuery.of(context).size.width * 0.056,
//             top:  MediaQuery.of(context).size.height * 0.11,
//             child: Row(
//               children: [
//                 Image.asset(
//                   Assets.Calendar_Image,
//                   height:  MediaQuery.of(context).size.height * 0.028,
//                   fit: BoxFit.fill,
//                   color: Col.yellow,
//                 ),
//                 Text(
//                   " 7 Days",
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                     color: Col.WHITE,
//                     fontSize: MediaQuery.of(context).size.height * 0.032,
//                     fontFamily: Assets.Poppins_Bold,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ],
//     );
//   }
// }
//
//
// class DietCardPlan2 extends StatefulWidget {
//   @override
//   _DietCardPlan2State createState() => _DietCardPlan2State();
// }
//
// class _DietCardPlan2State extends State<DietCardPlan2> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Stack(children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.18,
//             width: MediaQuery.of(context).size.width * 0.80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(14),
//               ),
//               image: DecorationImage(
//                 image: AssetImage(
//                   Assets.ChoosePlan_Image,
//                 ),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             left: MediaQuery.of(context).size.width * 0.05,
//             top:  MediaQuery.of(context).size.height * 0.036,
//             child: Text(
//               "Low Colorie",
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: Col.WHITE,
//                 fontSize: MediaQuery.of(context).size.height * 0.032,
//                 fontFamily:Assets.Poppins_Bold,
//               ),
//             ),
//           ),
//           Positioned(
//             left: MediaQuery.of(context).size.width * 0.05,
//             top:  MediaQuery.of(context).size.height * 0.076,
//             child: Text(
//               "Full  Day",
//               style: TextStyle(
//                 color: Col.WHITE.withOpacity(0.5),
//                 letterSpacing: 4.0,
//                 fontSize: MediaQuery.of(context).size.height * 0.019,
//                 fontFamily: Assets.Poppins_Bold,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.036,
//             left: MediaQuery.of(context).size.width * 0.461,
//             child: Text(
//               "2233",
//               style: TextStyle(
//                 color: Col.yellow,
//                 fontSize: MediaQuery.of(context).size.height * 0.068,
//                 // fontFamily: "Product",
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.1,
//             left:  MediaQuery.of(context).size.width * 0.67,
//             child: Text(
//               "SAR",
//               style: TextStyle(
//                 color: Col.WHITE,
//                 fontSize: MediaQuery.of(context).size.height * 0.017,
//                 fontFamily: Assets.Poppins_Bold,
//               ),
//             ),
//           ),
//           Positioned(
//             left: MediaQuery.of(context).size.width * 0.056,
//             top:  MediaQuery.of(context).size.height * 0.11,
//             child: Row(
//               children: [
//                 Image.asset(
//                   Assets.Calendar_Image,
//                   height:  MediaQuery.of(context).size.height * 0.028,
//                   fit: BoxFit.fill,
//                   color: Col.yellow,
//                 ),
//                 Text(
//                   " 30 Days",
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                     color: Col.WHITE,
//                     fontSize: MediaQuery.of(context).size.height * 0.032,
//                     fontFamily: Assets.Poppins_Bold,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ],
//     );
//   }
// }
