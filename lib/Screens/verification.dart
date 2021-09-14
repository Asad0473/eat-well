import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_number/phone_number.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}



class _VerificationState extends State<Verification> {
  String _Email_Address;
  String _password;

  final verificationController1 = new TextEditingController();
  final verificationController2 = new TextEditingController();
  final verificationController3 = new TextEditingController();
  final verificationController4 = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return Scaffold(
                resizeToAvoidBottomInset: true,
                body: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          Assets.Sign_Bg_image,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height:120,
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                color: Col.WHITE,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(55),
                                  topLeft: Radius.circular(55),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(55),
                                  topLeft: Radius.circular(55),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 41,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Verification",
                                            style: TextStyle(
                                              fontFamily: Assets.Product_Sans_Bold,
                                              color: Col.blue,
                                              fontSize: 33,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:21,
                                      ),
                                      Text("Enter the Verification Code we sent to your number",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: Assets.Product_Sans_Regular
                                        ),
                                      ),
                                      SizedBox(
                                        height:70,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 53,
                                                decoration: BoxDecoration(
                                                  color: Col.lightgrey,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.digitsOnly,
                                                    LengthLimitingTextInputFormatter(1),
                                                  ],
                                                    style: TextStyle(
                                                      fontSize: 26.7,
                                                        color: Col.black,
                                                    ),
                                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                  controller: verificationController1,
                                                  textInputAction: TextInputAction.next,
                                                  onChanged: (value) {
                                                    setState(() {});
                                                  },
                                                  textAlign: TextAlign.center,
                                                  decoration: InputDecoration(
                                                    enabledBorder: InputBorder.none,
                                                    border: InputBorder.none,
                                                    hintText: "0",

                                                    hintStyle: TextStyle(
                                                      color: Col.grey,
                                                      fontFamily: Assets.Product_Sans_Regular,
                                                      fontSize: 26.7,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 7.7,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 53,
                                                decoration: BoxDecoration(
                                                  color: Col.lightgrey,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                    fontSize: 26.7,
                                                    color: Col.black,
                                                  ),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.digitsOnly,
                                                    LengthLimitingTextInputFormatter(1),
                                                  ],
                                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                  controller: verificationController2,
                                                  textInputAction: TextInputAction.next,
                                                  onChanged: (value) {
                                                    setState(() {});
                                                  },
                                                  textAlign: TextAlign.center,
                                                  decoration: InputDecoration(
                                                    enabledBorder: InputBorder.none,
                                                    border: InputBorder.none,
                                                    hintText: "0",
                                                    hintStyle: TextStyle(
                                                      color: Col.grey,
                                                      fontFamily: Assets.Product_Sans_Regular,
                                                      fontSize: 26.7,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 7.7,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 53,
                                                decoration: BoxDecoration(
                                                  color: Col.lightgrey,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                    fontSize: 26.7,
                                                    color: Col.black,
                                                  ),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.digitsOnly,
                                                    LengthLimitingTextInputFormatter(1),
                                                  ],
                                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                  controller: verificationController3,
                                                  textInputAction: TextInputAction.next,
                                                  onChanged: (value) {
                                                    setState(() {});
                                                  },
                                                  textAlign: TextAlign.center,
                                                  decoration: InputDecoration(
                                                    enabledBorder: InputBorder.none,
                                                    border: InputBorder.none,
                                                    hintText: "0",
                                                    hintStyle: TextStyle(
                                                      color: Col.grey,
                                                      fontFamily: Assets.Product_Sans_Regular,
                                                      fontSize: 26.7,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 7.7,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 53,
                                                decoration: BoxDecoration(
                                                  color: Col.lightgrey,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                    fontSize: 26.7,
                                                    color: Col.black,
                                                  ),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.digitsOnly,
                                                    LengthLimitingTextInputFormatter(1),
                                                  ],
                                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                  controller: verificationController4,
                                                  onChanged: (value) {
                                                    setState(() {});
                                                  },
                                                  textAlign: TextAlign.center,
                                                  decoration: InputDecoration(
                                                    enabledBorder: InputBorder.none,
                                                    border: InputBorder.none,
                                                    hintText: "0",
                                                    hintStyle: TextStyle(
                                                      color: Col.grey,
                                                      fontFamily: Assets.Product_Sans_Regular,
                                                      fontSize: 26.7,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 70,
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.5,
                                        decoration: BoxDecoration(
                                          color: Col.darkgreen,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: FlatButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, "DietCategory");
                                          },
                                          child: Text(
                                            "Verify",
                                            style: TextStyle(
                                              color: Col.WHITE,
                                              fontFamily: Assets.Product_Sans_Regular,
                                              fontWeight: FontWeight.normal,

                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 37,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, "DietCategory");
                                        },
                                        child: Text(
                                          "Resend Code",
                                          style: TextStyle(
                                            color: Col.blue,
                                            fontFamily: Assets.Product_Sans_Bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ],
                    )));
          }
          return Scaffold(
              resizeToAvoidBottomInset: true,
              body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        Assets.Sign_Bg_image,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height:120,
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Col.WHITE,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(55),
                                topLeft: Radius.circular(55),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(55),
                                topLeft: Radius.circular(55),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 41,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Verification",
                                          style: TextStyle(
                                            fontFamily: Assets.Product_Sans_Bold,
                                            color: Col.blue,
                                            fontSize: 33,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:21,
                                    ),
                                    Text("Enter the Verification Code we sent to your number",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: Assets.Product_Sans_Regular
                                      ),
                                    ),
                                    SizedBox(
                                      height:70,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35,right: 35),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 53,
                                              decoration: BoxDecoration(
                                                color: Col.lightgrey,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: TextFormField(
                                                inputFormatters: [
                                                  FilteringTextInputFormatter.digitsOnly,
                                                  LengthLimitingTextInputFormatter(1),
                                                ],
                                                style: TextStyle(
                                                  fontSize: 26.7,
                                                  color: Col.black,
                                                ),
                                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                controller: verificationController1,
                                                textInputAction: TextInputAction.next,
                                                onChanged: (value) {
                                                  setState(() {});
                                                },
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                  enabledBorder: InputBorder.none,
                                                  border: InputBorder.none,
                                                  hintText: "0",

                                                  hintStyle: TextStyle(
                                                    color: Col.grey,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontSize: 26.7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 7.7,
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 53,
                                              decoration: BoxDecoration(
                                                color: Col.lightgrey,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: TextFormField(
                                                style: TextStyle(
                                                  fontSize: 26.7,
                                                  color: Col.black,
                                                ),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter.digitsOnly,
                                                  LengthLimitingTextInputFormatter(1),
                                                ],
                                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                controller: verificationController2,
                                                textInputAction: TextInputAction.next,
                                                onChanged: (value) {
                                                  setState(() {});
                                                },
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                  enabledBorder: InputBorder.none,
                                                  border: InputBorder.none,
                                                  hintText: "0",
                                                  hintStyle: TextStyle(
                                                    color: Col.grey,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontSize: 26.7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 7.7,
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 53,
                                              decoration: BoxDecoration(
                                                color: Col.lightgrey,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: TextFormField(
                                                style: TextStyle(
                                                  fontSize: 26.7,
                                                  color: Col.black,
                                                ),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter.digitsOnly,
                                                  LengthLimitingTextInputFormatter(1),
                                                ],
                                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                controller: verificationController3,
                                                textInputAction: TextInputAction.next,
                                                onChanged: (value) {
                                                  setState(() {});
                                                },
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                  enabledBorder: InputBorder.none,
                                                  border: InputBorder.none,
                                                  hintText: "0",
                                                  hintStyle: TextStyle(
                                                    color: Col.grey,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontSize: 26.7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 7.7,
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 53,
                                              decoration: BoxDecoration(
                                                color: Col.lightgrey,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: TextFormField(
                                                style: TextStyle(
                                                  fontSize: 26.7,
                                                  color: Col.black,
                                                ),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter.digitsOnly,
                                                  LengthLimitingTextInputFormatter(1),
                                                ],
                                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                controller: verificationController4,
                                                onChanged: (value) {
                                                  setState(() {});
                                                },
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                  enabledBorder: InputBorder.none,
                                                  border: InputBorder.none,
                                                  hintText: "0",
                                                  hintStyle: TextStyle(
                                                    color: Col.grey,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontSize: 26.7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width * 0.5,
                                      decoration: BoxDecoration(
                                        color: Col.darkgreen,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: FlatButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, "DietCategory");
                                        },
                                        child: Text(
                                          "Verify",
                                          style: TextStyle(
                                            color: Col.WHITE,
                                            fontFamily: Assets.Product_Sans_Regular,
                                            fontWeight: FontWeight.normal,

                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 37,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, "DietCategory");
                                      },
                                      child: Text(
                                        "Resend Code",
                                        style: TextStyle(
                                          color: Col.blue,
                                          fontFamily: Assets.Product_Sans_Bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ],
                  )));
        },
      ),
    );
  }
}