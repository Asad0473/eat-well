import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:eatwell_app/slide.dart';
import 'package:flutter/material.dart';


class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}
class _GettingStartedScreenState extends State<GettingStartedScreen> {

  int _CurrentPage = 0;

  _onPageChanged(int index){
    setState(() {
      _CurrentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait)
             {
               return Scaffold(
                 body: Container(
                   color: Col.WHITE,
                   child: SafeArea(
                     child: Column(
                       children: [
                         SizedBox(
                           height: 20,
                         ),
                         Text(
                           "Find Your Goal",
                           style: TextStyle(
                             fontFamily: Assets.Product_Sans_Bold,
                             fontSize: MediaQuery.of(context).size.height * 0.04,
                             fontWeight: FontWeight.bold,
                             color: Col.blue,
                           ),
                         ),
                         SizedBox(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text(
                           "We have heathy diet plans and much",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontFamily: Assets.Product_Sans_Bold,
                             fontSize: MediaQuery.of(context).size.height * 0.02,
                             color: Col.grey,
                           ),
                         ),
                         Text(
                           "more for you.",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontFamily: Assets.Product_Sans_Bold,
                             fontSize: MediaQuery.of(context).size.height * 0.02,
                             color: Col.grey,
                           ),
                         ),
                         SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                         Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20),
                           child: Container(
                             height: MediaQuery.of(context).size.height *0.5,
                                // color: Colors.grey,
                             child: PageView.builder(
                                 itemCount: slideList.length,
                                 onPageChanged: _onPageChanged ,
                                 itemBuilder: (context,index){
                                   return SlideItem(index);
                                 }
                             ),
                           ),
                         ),
                         // SizedBox(
                         //   height: MediaQuery.of(context).size.height * 0.03,
                         // ),

                         //Arrow
                         _CurrentPage >=2?SizedBox(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ):SizedBox(
                           height: 0,
                         ),

                         InkWell(
                           onTap: () {
                             // Navigator.pushNamed(context, "FindYourGoalScreen2");
                           },
                           child: Image.asset(
                             Assets.Nextarrow_Image,
                             height: MediaQuery.of(context).size.height * 0.027,
                           ),
                         ),
                         SizedBox(
                           height: MediaQuery.of(context).size.height * 0.05,
                         ),

                         //dots
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             for(int i=0;i<4;i++)
                               if(i==_CurrentPage)
                                 SlideDots(true)
                               else
                                 SlideDots(false),
                           ],
                         ),
                         SizedBox(
                           height: MediaQuery.of(context).size.height * 0.08,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(
                               height: 50,
                               width: 150,
                               decoration: BoxDecoration(
                                 color: Col.darkgreen,
                                 borderRadius: BorderRadius.all(
                                   Radius.circular(8),
                                 ),
                               ),
                               child: FlatButton(
                                 onPressed: () {
                                   Navigator.pushNamed(context, "SignIn");
                                 },
                                 child: Text(
                                   "SIGN IN",
                                   style: TextStyle(
                                       color: Col.WHITE.withOpacity(0.8),
                                       fontFamily: Assets.Product_Sans_Regular,
                                       fontWeight: FontWeight.normal,
                                       fontSize:15.7,
                                       // MediaQuery.of(context).size.height * 0.025
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(
                               width: 10,
                             ),
                             Container(
                               height: 50,
                               width: 150,
                               // width: MediaQuery.of(context).size.width * 0.4,
                               decoration: BoxDecoration(
                                 color: Col.blue,
                                 borderRadius: BorderRadius.all(
                                   Radius.circular(8),
                                 ),
                               ),
                               child: FlatButton(
                                 onPressed: () {},
                                 child: Text(
                                   "SIGN UP",
                                   style: TextStyle(
                                       color: Col.WHITE.withOpacity(0.8),
                                       fontFamily: Assets.Product_Sans_Regular,
                                       fontWeight: FontWeight.normal,
                                       fontSize: 15.7,
                                       // MediaQuery.of(context).size.height * 0.025
                                   ),
                                 ),
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
                 ),
               );
          }
          else
            return Scaffold(
              body: Container(
                color: Col.WHITE,
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Find Your Goal",
                          style: TextStyle(
                            fontFamily: Assets.Product_Sans_Bold,
                            fontSize: 33,
                            color: Col.blue,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "We have heathy diet plans and much",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: Assets.Product_Sans_Regular,
                            fontSize:16.7,
                            color: Col.grey,
                          ),
                        ),
                        Text(
                          "more for you.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: Assets.Product_Sans_Regular,
                            fontSize: 16.7,
                            color: Col.grey,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 422,
                            child: PageView.builder(
                                itemCount: slideList.length,
                                onPageChanged: _onPageChanged ,
                                itemBuilder: (context,index){
                                  return SlideItem1(index);
                                }
                            ),
                          ),
                        ),
                        _CurrentPage <=2?SizedBox(
                          // height: 10,
                        ):SizedBox(
                          height: 33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for(int i=0;i<4;i++)
                              if(i==_CurrentPage)
                                SlideDots1(true)
                              else
                                SlideDots1(false),
                          ],
                        ),
                        SizedBox(
                          height: 68,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 53,
                              width: 165,
                              decoration: BoxDecoration(
                                color: Col.darkgreen,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "SignIn");
                                },
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                    color: Col.WHITE.withOpacity(0.8),
                                    fontFamily: Assets.Product_Sans_Regular,
                                    fontWeight: FontWeight.normal,
                                    fontSize:16.7,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 53,
                              width: 165,
                              decoration: BoxDecoration(
                                color: Col.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      color: Col.WHITE.withOpacity(0.8),
                                      fontFamily: Assets.Product_Sans_Regular,
                                      fontWeight: FontWeight.normal,
                                      fontSize:16.7
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );

          },
      ),
    );
  }
}

// landscpace mode
class SlideItem1 extends StatelessWidget {
  final int index;
  SlideItem1(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        index <=1? Image.asset(
          slideList[index].first_image_url,
          fit: BoxFit.cover,
          height: 242,
        ):Image.asset(
          slideList[index].first_image_url,
          fit: BoxFit.cover,
          height: 242,
        ),
        SizedBox(
          height: 38,
        ),
        Text(
          slideList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: Assets.Product_Sans_Bold,
            fontSize: 23.3,
            color: Col.blue,
          ),
        ),
        index<= 1?SizedBox(
          height: 36,
        ):SizedBox(
          height: 21,
        ),
        InkWell(
          onTap: () {
            // Navigator.pushNamed(context, "FindYourGoalScreen2");
          },
          child: Image.asset(
            slideList[index].second_image_url,
            height: MediaQuery.of(context).size.width * 0.027,
          ),
        ),

      ],
    );

  }
}

class SlideDots1 extends StatelessWidget {

  bool isActive;
  SlideDots1(this.isActive);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: isActive? Col.green: Col.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// Potrait mode
class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       // index <=1?
       Image.asset(
          slideList[index].first_image_url,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.38,
       ),
        SizedBox(
          height: 20,
        ),
        Text(
          slideList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: Assets.Product_Sans_Bold,
            fontSize: MediaQuery.of(context).size.height * 0.03, //23.3,
            color: Col.blue,
          ),
        ),
      ],
    );
  }
}

class SlideDots extends StatelessWidget {

  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              color: isActive? Col.darkgreen: Col.lightgrey,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
