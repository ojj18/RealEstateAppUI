import 'dart:convert';
import 'package:Realify/member/Favourite/main.dart';
import 'package:Realify/member/PropertyLocation/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:readmore/readmore.dart';
import 'List.dart';
import 'package:Realify/member/TrendsAndInduces/main.dart';
import 'package:Realify/member/Email/main.dart';
import 'package:Realify/member/Report/main.dart';
import 'package:Realify/member/Location/main.dart';

class PropertyDetails extends StatefulWidget {
  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  bool issaved = true;
  void togglesaved() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 240,
                    width: double.maxFinite,
                    child: Stack(
                      children: [
                        Container(
                          height: 240,
                          width: double.maxFinite,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Image(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/1571470/pexels-photo-1571470.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                ),
                                height: 240,
                                width: 390,
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/1648768/pexels-photo-1648768.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                ),
                                height: 240,
                                width: 390,
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                                height: 240,
                                width: 390,
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/916337/pexels-photo-916337.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                                height: 240,
                                width: 390,
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/2101087/pexels-photo-2101087.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                                height: 240,
                                width: 390,
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/3958966/pexels-photo-3958966.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                                height: 240,
                                width: 390,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 50,
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
                                                  builder: (context) =>
                                                      Favourite()));
                                        },
                                        iconSize: Sizeconfig.huge,
                                        color: ColorConfig.light,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0.1),
                                      child: Text(
                                        "PROPERTY DETAILS",
                                        style: TextStyle(
                                          fontFamily: FontConfig.bold,
                                          fontSize: Sizeconfig.medium,
                                          color: ColorConfig.light,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Align(
                                      alignment: Alignment(0, 0.1),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Feather.share_2,
                                            color: ColorConfig.light,
                                            size: Sizeconfig.huge),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0.1),
                                      child: IconButton(
                                          icon: Icon(
                                            MaterialIcons.favorite,
                                            color: (issaved
                                                ? ColorConfig.light
                                                : ColorConfig.red),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              if (issaved) {
                                                issaved = false;
                                              } else {
                                                issaved = true;
                                              }
                                            });
                                          }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(3),
                              ),
                              color: ColorConfig.grey,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  FontAwesome.camera,
                                  color: ColorConfig.light,
                                  size: Sizeconfig.tiny,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.light,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Text(
                            "\$",
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              color: ColorConfig.dark,
                              fontSize: Sizeconfig.compact,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "1,655,123",
                          style: TextStyle(
                              fontFamily: FontConfig.bold,
                              color: ColorConfig.greyDark,
                              fontSize: Sizeconfig.higantic),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Text(
                            "yearly",
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              color: ColorConfig.dark,
                              fontSize: Sizeconfig.medium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesome.bed,
                              size: Sizeconfig.huge,
                              color: ColorConfig.darkGreen,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "2 Beds",
                                style: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesome5.bath,
                              size: Sizeconfig.huge,
                              color: ColorConfig.darkGreen,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "1 Bath",
                                style: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
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
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "95 sqm",
                                style: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: ColorConfig.grey.withOpacity(0.3),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PropertyLocation()));
                      },
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/gps.png',
                            ),
                            height: 60,
                            width: 60,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "13th Street. 47 W 13th St, New York",
                            style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.medium,
                              color: ColorConfig.dark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: ColorConfig.grey.withOpacity(0.3),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 15),
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.compact,
                        color: ColorConfig.dark,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20, right: 15),
                    child: Text(
                      "Lovely 2 Bedrooms in Muroor Street",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.tiny,
                        color: ColorConfig.dark,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Type",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                        Text(
                          "Apartment",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                        Text(
                          "\$1,655,123",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Beds",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bath",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Area",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                        Text(
                          "95 sqm",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Purpose",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                        Text(
                          "For Rent",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                        Text(
                          "Muroor Road",
                          style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 15),
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.compact,
                        color: ColorConfig.dark,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20, right: 15),
                    child: ReadMoreText(
                      """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.greyDark,
                      ),
                      trimLines: 6,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read More",
                      trimExpandedText: "Hide",
                      colorClickableText: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/location.png',
                                ),
                                height: 60,
                                width: 60,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location & Nearby",
                                    style: TextStyle(
                                      fontFamily: FontConfig.bold,
                                      fontSize: Sizeconfig.medium,
                                      color: ColorConfig.dark,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "View Property location and nearby amenities",
                                    style: TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.tiny,
                                      color: ColorConfig.dark,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            AntDesign.arrowright,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Indices()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/compass.png',
                                ),
                                height: 60,
                                width: 60,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Trends & indices",
                                    style: TextStyle(
                                      fontFamily: FontConfig.bold,
                                      fontSize: Sizeconfig.medium,
                                      color: ColorConfig.dark,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "View home value price indices and popularity trends",
                                    style: TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.tiny,
                                      color: ColorConfig.dark,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            AntDesign.arrowright,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 20, right: 15),
                    child: Text(
                      "Listing provided by",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.compact,
                        color: ColorConfig.dark,
                      ),
                    ),
                  ),
                  Container(
                    child: Image(
                      image: NetworkImage(
                          "https://image.freepik.com/free-vector/real-estate-logo-template_1156-724.jpg"),
                      height: 150,
                      width: MediaQuery.of(context).size.width * 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 15,
                      right: 15,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Report()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Foundation.flag,
                            size: Sizeconfig.huge,
                            color: ColorConfig.darkGreen,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Report a problem with this property",
                            style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.darkGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: ColorConfig.grey.withOpacity(0.3),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 20, right: 15),
                    child: Text(
                      "Recommended Properties",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.compact,
                        color: ColorConfig.dark,
                      ),
                    ),
                  ),
                  Container(
                    height: 580,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/json/recommended.json'),
                        builder: (context, snapshot) {
                          var recommended_data =
                              json.decode(snapshot.data.toString());
                          return ListView.builder(
                            physics: ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, right: 15, left: 15),
                                    child: RecommendedList(
                                      recommended_data: recommended_data,
                                      index: index,
                                    ),
                                  ),
                                ],
                              );
                            },
                            itemCount: recommended_data == null
                                ? 0
                                : recommended_data.length,
                          );
                        }),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FlatButton(
                        color: ColorConfig.darkGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmailPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              MaterialCommunityIcons.email,
                              size: Sizeconfig.huge,
                              color: ColorConfig.lightGreen,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "EMAIL",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.light,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: FlatButton(
                        color: ColorConfig.darkGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Ionicons.ios_call,
                              size: Sizeconfig.huge,
                              color: ColorConfig.lightGreen,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "CALL",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.light,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
