import 'package:Realify/public/PropertyDetails/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:Realify/public/ListRealify/main.dart';

class Indices extends StatefulWidget {
  @override
  _IndicesState createState() => _IndicesState();
}

class _IndicesState extends State<Indices> {
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
              children: [
                Align(
                  alignment: Alignment(0, 0.1),
                  child: IconButton(
                    icon: Icon(AntDesign.arrowleft),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PropertyDetails()));
                    },
                    iconSize: Sizeconfig.huge,
                    color: ColorConfig.dark,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.1),
                  child: Text(
                    "Trends & Indices",
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
          Divider(color: ColorConfig.grey.withOpacity(0.2)),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
                      left: 15,
                    ),
                    child: Text(
                      "Popularity comparision of Apartments 2-Beds in Horizon Tower (Ajman Downtown)",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 15, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListRealify()));
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: ColorConfig.lightGreen,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.light,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Horizon Tower",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.medium,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Ionicons.ios_arrow_forward,
                              size: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(color: ColorConfig.grey.withOpacity(0.3)),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListRealify()));
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: ColorConfig.lightGreen,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.light,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Falcon Tower",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.medium,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Ionicons.ios_arrow_forward,
                              size: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(color: ColorConfig.grey.withOpacity(0.3)),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListRealify()));
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: ColorConfig.lightGreen,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.light,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Ajman Pearl Tower",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.medium,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Ionicons.ios_arrow_forward,
                              size: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(color: ColorConfig.grey.withOpacity(0.3)),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListRealify()));
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: ColorConfig.lightGreen,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.light,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Al Khor Tower",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.medium,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Ionicons.ios_arrow_forward,
                              size: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(color: ColorConfig.grey.withOpacity(0.3)),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListRealify()));
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: ColorConfig.lightGreen,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.light,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Al Khail Tower",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.medium,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Ionicons.ios_arrow_forward,
                              size: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(color: ColorConfig.grey.withOpacity(0.3)),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
