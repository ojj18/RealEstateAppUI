import 'dart:convert';

import 'package:Realify/member/FloorPlan/main.dart';
import 'package:Realify/public/AddLocation/list.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AddLocation extends StatefulWidget {
  @override
  _AddLocationState createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.light,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment(0, 0.1),
                        child: IconButton(
                          icon: Icon(AntDesign.arrowleft),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FloorPlan()));
                          },
                          iconSize: Sizeconfig.huge,
                          color: ColorConfig.dark,
                        ),
                      ),
                      Align(
                        alignment: Alignment(0, 0.1),
                        child: Text(
                          "Add Location",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.medium,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Done",
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.darkGreen,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 1,
                width: double.maxFinite,
                color: ColorConfig.grey.withOpacity(0.2)),
            Material(
              elevation: 5,
              child: Container(
                height: 70,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          right: 15,
                          left: 10,
                        ),
                        height: 40,
                        decoration: BoxDecoration(
                          color: ColorConfig.smokeLight,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: TextField(
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.dark,
                              ),
                              decoration: InputDecoration(
                                hintText: "Select location",
                                hintStyle: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 20.0),
                    child: Row(
                      children: [
                        Icon(
                          MaterialIcons.location_on,
                          size: Sizeconfig.huge,
                          color: ColorConfig.dark,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5.0,
                          ),
                          child: Text(
                            "Location",
                            style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.large,
                              color: ColorConfig.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New york",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "USA",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 1,
                      width: double.maxFinite,
                      color: ColorConfig.grey.withOpacity(0.2)),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "California",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "USA",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 1,
                      width: double.maxFinite,
                      color: ColorConfig.grey.withOpacity(0.2)),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Washington",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "USA",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 1,
                      width: double.maxFinite,
                      color: ColorConfig.grey.withOpacity(0.2)),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Las Vegas",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "USA",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 1,
                      width: double.maxFinite,
                      color: ColorConfig.grey.withOpacity(0.2)),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "San Francisco",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "USA",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 1,
                      width: double.maxFinite,
                      color: ColorConfig.grey.withOpacity(0.2)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
