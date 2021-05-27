import 'package:Realify/public/ForgotPassword/main.dart';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:Realify/public/SignUp/main.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(AntDesign.arrowleft),
          color: Colors.white,
          onPressed: () {},
        ),
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              icon: Icon(
                AntDesign.close,
                color: Color.fromRGBO(49, 122, 87, 1),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Realify",
                      style: TextStyle(
                        color: ColorConfig.lightGreen,
                        fontSize: Sizeconfig.higantic,
                        fontFamily: FontConfig.logoFont,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome to Realify",
                      style: TextStyle(
                        color: ColorConfig.grey,
                        fontSize: Sizeconfig.compact,
                        fontFamily: FontConfig.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55, left: 15, right: 15),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: ColorConfig.dark,
                      fontFamily: FontConfig.regular,
                      fontSize: Sizeconfig.small,
                    ),
                    cursorHeight: 20,
                    cursorColor: ColorConfig.darkGreen,
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: ColorConfig.dark,
                      fontFamily: FontConfig.regular,
                      fontSize: Sizeconfig.small,
                    ),
                    cursorHeight: 20,
                    cursorColor: ColorConfig.darkGreen,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(
                          color: ColorConfig.darkGreen,
                          fontSize: Sizeconfig.small,
                          fontFamily: FontConfig.regular,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ColorConfig.darkGreen,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FlatButton(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: ColorConfig.light,
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: ColorConfig.darkGreen,
                      fontFamily: FontConfig.regular,
                      fontSize: Sizeconfig.compact,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ColorConfig.blue,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: FlatButton(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "LOGIN WITH FACEBOOK",
                          style: TextStyle(
                            color: ColorConfig.light,
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Need an account?",
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.medium,
                          color: ColorConfig.darkGreen,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.medium,
                              color: ColorConfig.darkGreen,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
