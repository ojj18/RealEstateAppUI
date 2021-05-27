import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/public/SignIn/main.dart';
import 'package:Realify/public/SignUp/DropDown.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:Realify/member/settings/CurrencyDrop.dart';
import 'package:Realify/member/settings/AreaDrop.dart';
import 'package:Realify/member/settings/LangDrop.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      iconSize: Sizeconfig.huge,
                      color: ColorConfig.dark,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.1),
                    child: Text(
                      "Settings",
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
            Expanded(
              flex: 14,
              child: Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.darkGreen,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
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
                                hintText: "Senorita",
                                hintStyle: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.darkGreen,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 7.0),
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
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorConfig.smoke,
                                  border: Border.all(
                                    width: 1,
                                    color: ColorConfig.smokeLight,
                                  ),
                                ),
                                child: Dropdown(),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: ColorConfig.smokeLight,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "9876543210",
                                      hintStyle: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Currency",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.darkGreen,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: ColorConfig.smoke,
                              border: Border.all(
                                width: 1,
                                color: ColorConfig.smokeLight,
                              ),
                              borderRadius: BorderRadius.circular(3)),
                          child: CurrencyDrop(),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Area Unit",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.darkGreen,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: ColorConfig.smoke,
                              border: Border.all(
                                width: 1,
                                color: ColorConfig.smokeLight,
                              ),
                              borderRadius: BorderRadius.circular(3)),
                          child: Areadrop(),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Language",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.darkGreen,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: ColorConfig.smoke,
                                border: Border.all(
                                  width: 1,
                                  color: ColorConfig.smokeLight,
                                ),
                                borderRadius: BorderRadius.circular(3)),
                            child: LangDrop(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(color: ColorConfig.grey.withOpacity(0.3)),
            Container(
              height: 68,
              width: double.maxFinite,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: RaisedButton(
                elevation: 0.0,
                color: ColorConfig.darkGreen,
                onPressed: () {},
                child: Text(
                  "UPDATE",
                  style: TextStyle(
                    color: ColorConfig.light,
                    fontSize: Sizeconfig.small,
                    fontFamily: FontConfig.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
