import 'package:Realify/public/SignIn/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment(0, 0.1),
                    child: IconButton(
                      icon: Icon(AntDesign.arrowleft),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      iconSize: Sizeconfig.huge,
                      color: ColorConfig.dark,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.1),
                    child: Text(
                      "Password Recovery",
                      style: TextStyle(
                        fontFamily: FontConfig.bold,
                        fontSize: Sizeconfig.medium,
                        color: ColorConfig.dark,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: ColorConfig.grey.withOpacity(0.3)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We will send yout verification link to your registered email address.",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.dark,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.medium,
                        color: ColorConfig.darkGreen,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        cursorColor: ColorConfig.darkGreen,
                        cursorHeight: 20,
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.dark,
                        ),
                        decoration: InputDecoration(
                          hintText: "someone@abc.com",
                          hintStyle: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.medium,
                            color: ColorConfig.dark.withOpacity(0.5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Divider(
                      endIndent: 15,
                      height: 0.1,
                      color: ColorConfig.darkGreen,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 68,
              width: double.maxFinite,
              color: Colors.white,
              child: RaisedButton(
                color: ColorConfig.darkGreen,
                onPressed: () {},
                child: Text(
                  "Send",
                  style: TextStyle(
                    fontFamily: FontConfig.bold,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.light,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
