import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:flutter/material.dart';
class DietCategory extends StatefulWidget {
  @override
  _DietCategoryState createState() => _DietCategoryState();
}

class _DietCategoryState extends State<DietCategory> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:OrientationBuilder(
       builder: (context, orientation){
         if(orientation == Orientation.portrait)
           return Scaffold(
             appBar: AppBar(
               automaticallyImplyLeading: false,
               backgroundColor: Col.green,
               elevation: 0,
               title: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Icon(
                     Icons.menu,
                     size: MediaQuery.of(context).size.height *0.039,
                   ),
                   RichText(
                     textAlign: TextAlign.center,
                     text: TextSpan(
                       children:[
                         TextSpan(
                             text: 'DIET ',
                             style: TextStyle(
                                 fontSize: MediaQuery.of(context).size.height *0.02,
                                 fontFamily: Assets.Poppins_Bold
                             )),
                         TextSpan(
                             text: 'CATEGORY',
                             style: TextStyle(
                               fontFamily: Assets.Poppins_Regular,
                               fontSize:MediaQuery.of(context).size.height *0.02,
                             )
                         ),
                       ],
                     ),
                   ),
                   Image.asset(
                     Assets.Cart_Image,
                     height: MediaQuery.of(context).size.height *0.03,
                     color: Col.WHITE,
                   ),
                 ],
               ),
             ),
             body: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               color: Col.green,
               child: SingleChildScrollView(
                 child: Column(
                   children: [
                     Container(
                       height:MediaQuery.of(context).size.height*0.063,
                       width: MediaQuery.of(context).size.width * 0.92,
                       decoration: BoxDecoration(
                         color: Col.WHITE,
                         borderRadius: BorderRadius.all(Radius.circular(40)),
                       ),
                       child: Row(
                         children: [
                           InkWell(
                             onTap: (){
                               Navigator.pushNamed(context,"SignIn");
                             },
                             child: Padding(
                               padding: const EdgeInsets.only(right: 2),
                               child: Container(
                                 height:MediaQuery.of(context).size.height*0.1,
                                 width: MediaQuery.of(context).size.width * 0.3,
                                 decoration: BoxDecoration(
                                   color: Col.WHITE,
                                   borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(35),
                                     bottomLeft:Radius.circular(35),
                                   ),
                                 ),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                                       "Lose weight",
                                       style: TextStyle(
                                         color: Col.black,
                                         fontFamily: Assets.Poppins_Bold,
                                         fontSize: MediaQuery.of(context).size.height* 0.016,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                           InkWell(
                             onTap: (){
                               Navigator.pushNamed(context,"SignIn");
                             },
                             child: Container(
                               height:MediaQuery.of(context).size.height*0.06,
                               width: MediaQuery.of(context).size.width * 0.31,
                               decoration: BoxDecoration(
                                 color: Col.green,
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text(
                                     "Eat Healthy",
                                     style: TextStyle(
                                         color: Col.WHITE,
                                         fontSize: MediaQuery.of(context).size.height* 0.017,
                                         fontFamily: Assets.Poppins_Regular
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 0.9),
                             child: InkWell(
                               onTap: (){
                                 Navigator.pushNamed(context,"SignIn");
                               },
                               child: Container(
                                 height:MediaQuery.of(context).size.height*0.06,
                                 width: MediaQuery.of(context).size.width * 0.30,
                                 decoration: BoxDecoration(
                                   color: Col.green,
                                   borderRadius: BorderRadius.only(
                                     topRight: Radius.circular(35),
                                     bottomRight:Radius.circular(35),
                                   ),
                                 ),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                                       "Chronic Disease",
                                       style: TextStyle(
                                           color: Col.WHITE,
                                           fontSize: MediaQuery.of(context).size.height* 0.017,
                                           fontFamily: Assets.Poppins_Regular
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                       height: MediaQuery.of(context).size.height *0.03,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Text(
                         "At Eat Well Food Farm-acy we offer high quality, tasty and nutritious meals prepared with wholesome, natural ingredients that have healing properties and tailored to each client’s condition.",
                         style: TextStyle(
                             fontSize: MediaQuery.of(context).size.height *0.014,
                             color: Col.WHITE,
                             fontFamily: Assets.Poppins_Regular
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, "kitoDiet");
                       },
                        child:Image.asset(
                            Assets.KitoDiet_Image,
                        ),
                       // child: Container(
                       //   width: MediaQuery.of(context).size.width,
                       //   height: MediaQuery.of(context).size.height *0.4,
                       //   decoration:BoxDecoration(
                       //     image: DecorationImage(
                       //       image: AssetImage(
                       //           Assets.KitoDiet_Image
                       //       ),
                       //       fit: BoxFit.cover,
                       //     ),
                       //   ),
                       // ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context,  "LowCalorieDiet");
                       },
                       child:Image.asset( Assets.LowCalorieDiet_Image),
                       // child: Container(
                       //   width: MediaQuery.of(context).size.width,
                       //   height: MediaQuery.of(context).size.height *0.4,
                       //   decoration:BoxDecoration(
                       //     image: DecorationImage(
                       //       image: AssetImage(
                       //           Assets.LowCalorieDiet_Image
                       //       ),
                       //       fit: BoxFit.cover,
                       //     ),
                       //   ),
                       // ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, "kitoDiet");
                       },
                       child:Image.asset( Assets.Snack_Image),
                       // child: Container(
                       //   width: MediaQuery.of(context).size.width,
                       //   height: MediaQuery.of(context).size.height *0.4,
                       //   decoration:BoxDecoration(
                       //     image: DecorationImage(
                       //       image: AssetImage(
                       //         Assets.Snack_Image,
                       //       ),
                       //       fit: BoxFit.cover,
                       //     ),
                       //   ),
                       // ),
                     ),
                   ],
                 ),
               ),
             ),
           );
         else
           return Scaffold(
             backgroundColor: Col.green,
             appBar: AppBar(
               automaticallyImplyLeading: false,
               backgroundColor: Col.green,
               elevation: 0,
               title: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Icon(
                     Icons.menu,
                   ),
                   RichText(
                     textAlign: TextAlign.center,
                     text: TextSpan(
                       children:[
                         TextSpan(
                             text: 'DIET  ',
                             style: TextStyle(
                                 fontFamily: Assets.Poppins_Bold
                             )),
                         TextSpan(
                             text: 'CATEGORY',
                             style: TextStyle(
                               fontFamily: Assets.Poppins_Regular,
                             )
                         ),
                       ],
                     ),
                   ),
                   Image.asset(
                     Assets.Cart_Image,
                     height: 20,
                     color: Col.WHITE,
                   ),
                 ],
               ),
             ),
             body: Container(
               // width: MediaQuery.of(context).size.width,
               // height: MediaQuery.of(context).size.height,
               color: Col.green,
               child: SingleChildScrollView(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Container(
                         height:50,
                         // width: MediaQuery.of(context).size.width * 0.92,
                         decoration: BoxDecoration(
                           color: Col.WHITE,
                           borderRadius: BorderRadius.all(Radius.circular(40)),
                         ),
                         child: Row(
                           children: [
                             Expanded(
                               child: InkWell(
                                 onTap: (){
                                   Navigator.pushNamed(context,"SignIn");
                                 },
                                 child: Padding(
                                   padding: const EdgeInsets.only(right: 2),
                                   child: Container(
                                     height:42,
                                     // width: MediaQuery.of(context).size.width * 0.3,
                                     decoration: BoxDecoration(
                                       color: Col.WHITE,
                                       borderRadius: BorderRadius.only(
                                         topLeft: Radius.circular(35),
                                         bottomLeft:Radius.circular(35),
                                       ),
                                     ),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Text(
                                           "Lose weight",
                                           style: TextStyle(
                                             color: Col.black,
                                             fontFamily: Assets.Poppins_Bold,
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                             Expanded(child:  InkWell(
                               onTap: (){
                                 Navigator.pushNamed(context,"SignIn");
                               },
                               child: Container(
                                 height:49,
                                 // width: MediaQuery.of(context).size.width * 0.31,
                                 decoration: BoxDecoration(
                                   color: Col.green,
                                 ),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                                       "Eat Healthy",
                                       style: TextStyle(
                                           color: Col.WHITE,
                                           fontFamily: Assets.Poppins_Regular
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             )),
                             Expanded(
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 0.9,right: 1),
                                 child: InkWell(
                                   onTap: (){
                                     Navigator.pushNamed(context,"SignIn");
                                   },
                                   child: Container(
                                     height:49,
                                     // width: MediaQuery.of(context).size.width * 0.302,
                                     decoration: BoxDecoration(
                                       color: Col.green,
                                       borderRadius: BorderRadius.only(
                                         topRight: Radius.circular(35),
                                         bottomRight:Radius.circular(35),
                                       ),
                                     ),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Text(
                                           "Chronic Disease",
                                           style: TextStyle(
                                               color: Col.WHITE,
                                               fontFamily: Assets.Poppins_Regular
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       height: MediaQuery.of(context).size.height *0.03,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Text(
                         "At Eat Well Food Farm-acy we offer high quality, tasty and nutritious meals prepared with wholesome, natural ingredients that have healing properties and tailored to each client’s condition.",
                         style: TextStyle(
                             color: Col.WHITE,
                             fontFamily: Assets.Poppins_Regular,
                           fontSize: 15,
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, "kitoDiet");
                       },
                       child:Image.asset( Assets.KitoDiet_Image),
                       // Container(
                       //   width: MediaQuery.of(context).size.width,
                       //   height: MediaQuery.of(context).size.height *0.4,
                       //   decoration:BoxDecoration(
                       //     image: DecorationImage(
                       //       image: AssetImage(
                       //           Assets.KitoDiet_Image
                       //       ),
                       //       fit: BoxFit.cover,
                       //     ),
                       //   ),
                       // ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context,  "LowCalorieDiet");
                       },
                       child:Image.asset( Assets.LowCalorieDiet_Image),
                       // child: Container(
                       //   width: MediaQuery.of(context).size.width,
                       //   height: MediaQuery.of(context).size.height *0.4,
                       //   decoration:BoxDecoration(
                       //     image: DecorationImage(
                       //       image: AssetImage(
                       //           Assets.LowCalorieDiet_Image
                       //       ),
                       //       fit: BoxFit.cover,
                       //     ),
                       //   ),
                       // ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, "kitoDiet");
                       },
                       child:Image.asset(Assets.Snack_Image),
                     //   child: Container(
                     //     width: MediaQuery.of(context).size.width,
                     //     height: MediaQuery.of(context).size.height *0.4,
                     //     decoration:BoxDecoration(
                     //       image: DecorationImage(
                     //         image: AssetImage(
                     //           Assets.Snack_Image,
                     //         ),
                     //         fit: BoxFit.cover,
                     //       ),
                     //     ),
                     //   ),
                     ),



                     // Expanded(
                     //   child: InkWell(
                     //     onTap: (){
                     //       Navigator.pushNamed(context, "kitoDiet");
                     //     },
                     //     child: Container(
                     //       decoration:BoxDecoration(
                     //         image: DecorationImage(
                     //           image: AssetImage(
                     //             "assets/Keto-Diet-image.jpg",
                     //           ),
                     //           fit: BoxFit.fill,
                     //         ),
                     //       ),
                     //     ),
                     //   ),
                     // ),
                     // Expanded(
                     //
                     //   child: InkWell(
                     //     onTap: (){
                     //       Navigator.pushNamed(context,"LowCalorieDiet");
                     //     },
                     //     child: Container(
                     //       decoration:BoxDecoration(
                     //         image: DecorationImage(
                     //           image: AssetImage(
                     //             "assets/Low-Colorie-Diet-image.jpg",
                     //           ),
                     //           fit: BoxFit.fill,
                     //         ),
                     //       ),
                     //     ),
                     //   ),
                     // ),
                     // Expanded(
                     //   child: Container(
                     //     decoration:BoxDecoration(
                     //       image: DecorationImage(
                     //         image: AssetImage(
                     //           "assets/Snack-image.jpg",
                     //         ),
                     //         fit: BoxFit.fill,
                     //       ),
                     //     ),
                     //   ),
                     // ),
                   ],
                 ),
               ),
             ),
           );
       },
     ),

   );










  }
}
