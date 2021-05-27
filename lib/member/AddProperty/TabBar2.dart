import 'package:Realify/member/AddProperty/TabBar1.dart';
import 'package:Realify/public/Filter/main.dart';
import 'package:Realify/public/ListRealify/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class AddTabBar2 extends StatefulWidget {
  @override
  _AddTabBar2State createState() => _AddTabBar2State();
}

class _AddTabBar2State extends State<AddTabBar2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                Entypo.home,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Property Types",
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
        Propertytype(),
        Container(
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
                  child: Row(
                    children: [
                      Icon(
                        MaterialIcons.location_on,
                        size: 20,
                        color: ColorConfig.grey,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: TextField(
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.greyLight,
                            ),
                            decoration: InputDecoration(
                              hintText: "Select location",
                              hintStyle: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.greyLight,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                MaterialCommunityIcons.av_timer,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Rental Frequency",
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
        Rentaltype(),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 1,
            width: double.maxFinite,
            color: ColorConfig.grey.withOpacity(0.3)),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                FontAwesome5.clipboard_list,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Property Details",
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
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            style: TextStyle(
              fontFamily: FontConfig.regular,
              fontSize: Sizeconfig.small,
              color: ColorConfig.dark,
            ),
            decoration: InputDecoration(
              hintText: "Property Title",
              hintStyle: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            style: TextStyle(
              fontFamily: FontConfig.regular,
              fontSize: Sizeconfig.small,
              color: ColorConfig.dark,
            ),
            decoration: InputDecoration(
              hintText: "Property Description",
              hintStyle: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 1,
            width: double.maxFinite,
            color: ColorConfig.grey.withOpacity(0.3)),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                Ionicons.ios_pricetag,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Price",
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
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
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
                    hintText: "Price*",
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
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 1,
            width: double.maxFinite,
            color: ColorConfig.grey.withOpacity(0.3)),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                AntDesign.appstore_o,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Area",
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
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(
            right: 15,
            left: 10,
          ),
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    right: 15,
                    left: 10,
                  ),
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: ColorConfig.smokeLight,
                      )),
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
                          hintText: "Price*",
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
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConfig.smokeLight,
                      border: Border.all(
                        width: 1,
                        color: ColorConfig.smokeLight,
                      ),
                      borderRadius: BorderRadius.circular(3)),
                  child: Areadrop1(),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 1,
            width: double.maxFinite,
            color: ColorConfig.grey.withOpacity(0.3)),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                FontAwesome5.hashtag,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Permit Number",
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
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(
            style: TextStyle(
              fontFamily: FontConfig.regular,
              fontSize: Sizeconfig.small,
              color: ColorConfig.dark,
            ),
            decoration: InputDecoration(
              hintText: "e.g 1234",
              hintStyle: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 1,
            width: double.maxFinite,
            color: ColorConfig.grey.withOpacity(0.3)),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                Ionicons.ios_call,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Contact Details",
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
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(
            style: TextStyle(
              fontFamily: FontConfig.regular,
              fontSize: Sizeconfig.small,
              color: ColorConfig.dark,
            ),
            decoration: InputDecoration(
              hintText: "someone@qwer.com",
              hintStyle: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
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
                  child: Dropdown1(),
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
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 1,
            width: double.maxFinite,
            color: ColorConfig.grey.withOpacity(0.3)),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                FontAwesome5.list_alt,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Property Features",
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
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            padding: EdgeInsets.only(
              right: 15,
              left: 10,
            ),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1,
                color: ColorConfig.smokeLight,
              ),
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
                    hintText: "abc...",
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
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(
                Entypo.image_inverted,
                size: Sizeconfig.huge,
                color: ColorConfig.darkGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Property Image",
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
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
          child: InkWell(
            onTap: () {},
            child: DottedBorder(
              strokeWidth: 2,
              color: ColorConfig.greyLight,
              strokeCap: StrokeCap.butt,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Image(
                    height: 72,
                    width: 72,
                    image: AssetImage("assets/images/interface.png"),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
