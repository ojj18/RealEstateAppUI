import 'package:Realify/public/SignUp/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'data1.dart';
import 'data2.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: SizeConfig.isMobilePortrait ? 2 : 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Realify",
                    style: TextStyle(
                      fontFamily: FontConfig.logoFont,
                      fontSize: Sizeconfig.higantic,
                      color: ColorConfig.lightGreen,
                    ),
                  ),
                ),
                RaisedButton(
                  color: ColorConfig.darkGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Sign In / Sign Up",
                    style: TextStyle(
                      fontFamily: FontConfig.regular,
                      fontSize: Sizeconfig.medium,
                      color: ColorConfig.light,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Data1(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 10),
                    height: 40,
                    width: double.maxFinite,
                    color: ColorConfig.smokeDark,
                    child: Text(
                      "MANAGE PROPERTIES",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                    child: Data2(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
