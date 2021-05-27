import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            height: 90,
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: ColorConfig.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Entypo.plus,
                    color: ColorConfig.light,
                    size: Sizeconfig.compact,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Emitac Healthcare solutions",
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.greyDark,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "4.6",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.skyBlue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: ColorConfig.smoke,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            height: 90,
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: ColorConfig.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Entypo.plus,
                    color: ColorConfig.light,
                    size: Sizeconfig.compact,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mediclinic Middle East",
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.greyDark,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "4.8",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.skyBlue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            height: 90,
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: ColorConfig.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Entypo.plus,
                    color: ColorConfig.light,
                    size: Sizeconfig.compact,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Askdrtod",
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.greyDark,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "5.0",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.skyBlue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          ),
                          Icon(
                            Ionicons.ios_star,
                            size: Sizeconfig.medium,
                            color: ColorConfig.skyBlue,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
