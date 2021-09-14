import 'package:eatwell_app/resource/assets.dart';
import 'package:eatwell_app/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:phone_number/phone_number.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

List listItem = ['Customer', 'Seller', 'Patient'];

class _SignInState extends State<SignIn> {
  String _Email_Address;
  String _password;

  final EmailController = new TextEditingController();
  final PasswordController = new TextEditingController();

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
                                            "Authorization",
                                            style: TextStyle(
                                              fontFamily: Assets.Product_Sans_Bold,
                                              color: Col.blue,
                                              fontSize: 33,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:43,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                items: [
                                                  DropdownMenuItem(
                                                    child: Text(
                                                      "Customer",
                                                      style: TextStyle(
                                                        fontFamily: Assets.Product_Sans_Regular,
                                                        fontSize: 20,
                                                        color: Col.black

                                                      ),
                                                    ),
                                                  ),
                                                  DropdownMenuItem(child: Text("Seller")),
                                                  DropdownMenuItem(child: Text("Product")),
                                                ],
                                                onChanged: (index) {},
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(left: 5),
                                                  child: Container(
                                                    height: 16.3,// MediaQuery.of(context).size.height * 0.024,
                                                    width:16.3,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          Assets.DropDown_icon,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:37,
                                               width: 88.7,
                                              decoration: BoxDecoration(
                                                color: Col.lightgrey,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Sign in",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Col.black,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 16.7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:37,
                                               width: 88.7,
                                              decoration: BoxDecoration(
                                                color: Col.darkgreen,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Sign up",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Col.WHITE,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 16.7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                          height: 62,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 35),
                                            child: Text(
                                              "Email Address",
                                              style: TextStyle(
                                                  color: Col.blue,
                                                  fontSize: 13.3,
                                                  fontFamily: Assets.Poppins_Bold
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Container(
                                          height: 53,
                                          decoration: BoxDecoration(
                                            color: Col.lightgrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(7),
                                            ),
                                          ),
                                          child: TextFormField(
                                            controller: EmailController,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: EmailController.text.length > 0
                                                  ? IconButton(
                                                onPressed: () {
                                                  EmailController.clear();
                                                  setState(() {});
                                                },
                                                icon: Icon(Icons.clear),
                                              )
                                                  : null,
                                              enabledBorder: InputBorder.none,
                                              border: InputBorder.none,
                                              hintText: "info@eatwell.com",
                                              contentPadding:
                                              EdgeInsets.fromLTRB(18, 21, 0, 15.7),
                                              hintStyle: TextStyle(
                                                color: Col.grey,
                                                fontFamily: Assets.Product_Sans_Regular,
                                                fontSize: 16.7,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      //2nd form
                                      SizedBox(
                                        height: 42,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 35,right: 20),
                                            child: Text(
                                              "Enter mob number",
                                              style: TextStyle(
                                                  color: Col.blue,
                                                  fontSize: 13.3,
                                                  fontFamily: Assets.Product_Sans_Bold

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14.3,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Container(
                                          height: 53,
                                          decoration: BoxDecoration(
                                            color: Col.lightgrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(7),
                                            ),
                                          ),
                                          child: TextFormField(
                                            obscureText: true,
                                            controller: PasswordController,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: PasswordController.text.length > 0
                                                  ? IconButton(
                                                onPressed: () {
                                                  PasswordController.clear();
                                                  setState(() {});
                                                },
                                                icon: Icon(Icons.clear),
                                              )
                                                  : null,
                                              border: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              hintText: "+966 9200 27778",
                                              contentPadding:
                                              EdgeInsets.fromLTRB(18, 21, 0, 15.7),
                                              hintStyle: TextStyle(
                                                color: Col.grey,
                                                fontFamily: Assets.Product_Sans_Regular,
                                                fontSize: 14,
                                                letterSpacing: 3.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      //3rd from
                                      SizedBox(
                                        height: 42,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 35,right: 20),
                                            child: Text(
                                              "Set Password",
                                              style: TextStyle(
                                                  color: Col.blue,
                                                  fontSize: 13.3,
                                                  fontFamily: Assets.Product_Sans_Bold

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14.3,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Container(
                                          height: 53,
                                          decoration: BoxDecoration(
                                            color: Col.lightgrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(7),
                                            ),
                                          ),
                                          child: TextFormField(
                                            obscureText: true,
                                            controller: PasswordController,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: PasswordController.text.length > 0
                                                  ? IconButton(
                                                onPressed: () {
                                                  PasswordController.clear();
                                                  setState(() {});
                                                },
                                                icon: Icon(Icons.clear),
                                              )
                                                  : null,
                                              border: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              hintText: "............",
                                              contentPadding:
                                              EdgeInsets.fromLTRB(18, 21, 0, 15.7),
                                              hintStyle: TextStyle(
                                                color: Col.grey,
                                                fontFamily: Assets.Poppins_Bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        height: 45
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
                                            setState(() {
                                              _Email_Address = EmailController.text;
                                              _password = PasswordController.text;
                                            });
                                          },
                                          child: Text(
                                            "Create Account",
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
                                          "Sign up?",
                                          style: TextStyle(
                                            color: Col.blue,
                                            fontFamily: Assets.Product_Sans_Bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "You don't have previous account",
                                        style: TextStyle(
                                          color: Col.black,
                                          fontFamily: Assets.Product_Sans_Regular,
                                          // fontSize:

                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ],
                    )));
          }
          else
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
                          height:50,
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
                                            "Authorization",
                                            style: TextStyle(
                                              fontFamily: Assets.Product_Sans_Bold,
                                              color: Col.blue,
                                              fontSize: 33,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:43,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                items: [
                                                  DropdownMenuItem(
                                                    child: Text(
                                                      "Customer",
                                                      style: TextStyle(
                                                          fontFamily: Assets.Product_Sans_Regular,
                                                          fontSize: 20,
                                                          color: Col.black

                                                      ),
                                                    ),
                                                  ),
                                                  DropdownMenuItem(child: Text("Seller")),
                                                  DropdownMenuItem(child: Text("Product")),
                                                ],
                                                onChanged: (index) {},
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(left: 5),
                                                  child: Container(
                                                    height: 16.3,// MediaQuery.of(context).size.height * 0.024,
                                                    width:16.3,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          Assets.DropDown_icon,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:50,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                color: Col.lightgrey,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Sign in",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Col.black,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:50,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                color: Col.darkgreen,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Sign up",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Col.WHITE,
                                                    fontFamily: Assets.Product_Sans_Regular,
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 62,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 35),
                                            child: Text(
                                              "Email Address",
                                              style: TextStyle(
                                                  color: Col.blue,
                                                  fontSize: 13.3,
                                                  fontFamily: Assets.Poppins_Bold
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Container(
                                          height: 53,
                                          decoration: BoxDecoration(
                                            color: Col.lightgrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(7),
                                            ),
                                          ),
                                          child: TextFormField(
                                            controller: EmailController,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: EmailController.text.length > 0
                                                  ? IconButton(
                                                onPressed: () {
                                                  EmailController.clear();
                                                  setState(() {});
                                                },
                                                icon: Icon(Icons.clear),
                                              )
                                                  : null,
                                              enabledBorder: InputBorder.none,
                                              border: InputBorder.none,
                                              hintText: "info@eatwell.com",
                                              contentPadding:
                                              EdgeInsets.fromLTRB(18, 21, 0, 15.7),
                                              hintStyle: TextStyle(
                                                color: Col.grey,
                                                fontFamily: Assets.Product_Sans_Regular,
                                                fontSize: 16.7,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      //2nd form
                                      SizedBox(
                                        height: 42,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 35,right: 20),
                                            child: Text(
                                              "Enter mob number",
                                              style: TextStyle(
                                                  color: Col.blue,
                                                  fontSize: 13.3,
                                                  fontFamily: Assets.Product_Sans_Bold

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14.3,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Container(
                                          height: 53,
                                          decoration: BoxDecoration(
                                            color: Col.lightgrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(7),
                                            ),
                                          ),
                                          child: TextFormField(
                                            obscureText: true,
                                            controller: PasswordController,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: PasswordController.text.length > 0
                                                  ? IconButton(
                                                onPressed: () {
                                                  PasswordController.clear();
                                                  setState(() {});
                                                },
                                                icon: Icon(Icons.clear),
                                              )
                                                  : null,
                                              border: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              hintText: "+966 9200 27778",
                                              contentPadding:
                                              EdgeInsets.fromLTRB(18, 21, 0, 15.7),
                                              hintStyle: TextStyle(
                                                color: Col.grey,
                                                fontFamily: Assets.Product_Sans_Regular,
                                                fontSize: 14,
                                                letterSpacing: 3.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      //3rd from
                                      SizedBox(
                                        height: 42,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 35,right: 20),
                                            child: Text(
                                              "Set Password",
                                              style: TextStyle(
                                                  color: Col.blue,
                                                  fontSize: 13.3,
                                                  fontFamily: Assets.Product_Sans_Bold

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14.3,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35,right: 35),
                                        child: Container(
                                          height: 53,
                                          decoration: BoxDecoration(
                                            color: Col.lightgrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(7),
                                            ),
                                          ),
                                          child: TextFormField(
                                            obscureText: true,
                                            controller: PasswordController,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: PasswordController.text.length > 0
                                                  ? IconButton(
                                                onPressed: () {
                                                  PasswordController.clear();
                                                  setState(() {});
                                                },
                                                icon: Icon(Icons.clear),
                                              )
                                                  : null,
                                              border: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              hintText: "............",
                                              contentPadding:
                                              EdgeInsets.fromLTRB(18, 21, 0, 15.7),
                                              hintStyle: TextStyle(
                                                color: Col.grey,
                                                fontFamily: Assets.Poppins_Bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                          height: 45
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
                                            setState(() {
                                              _Email_Address = EmailController.text;
                                              _password = PasswordController.text;
                                            });
                                          },
                                          child: Text(
                                            "Create Account",
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
                                          "Sign up?",
                                          style: TextStyle(
                                            color: Col.blue,
                                            fontFamily: Assets.Product_Sans_Bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "You don't have previous account",
                                        style: TextStyle(
                                          color: Col.black,
                                          fontFamily: Assets.Product_Sans_Regular,
                                          // fontSize:

                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
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
