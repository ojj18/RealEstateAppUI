import 'dart:convert';

import 'package:Realify/member/FloorPlan/List.dart';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class FloorPlan extends StatefulWidget {
  @override
  _FloorPlanState createState() => _FloorPlanState();
}

class _FloorPlanState extends State<FloorPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.light,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Floor Plan",
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
            Container(
                height: 1,
                width: double.maxFinite,
                color: ColorConfig.grey.withOpacity(0.3)),
            Material(
              elevation: 5,
              child: Container(
                height: 100,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Column(
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non convallis nibh, nec molestie turpis.",
                        style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Feather.search,
                              color: ColorConfig.grey,
                              size: Sizeconfig.large,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: TextField(
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.small,
                                    color: ColorConfig.dark,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter a location",
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 450,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UAE Floor Plans",
                        style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.compact,
                          color: ColorConfig.dark,
                        ),
                      ),
                      Container(
                        height: 500,
                        child: FutureBuilder(
                            future: DefaultAssetBundle.of(context)
                                .loadString('assets/json/floor.json'),
                            builder: (context, snapshot) {
                              var floor_data =
                                  json.decode(snapshot.data.toString());
                              return ListView.builder(
                                physics: ClampingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      FloorList(
                                        floor_data: floor_data,
                                        index: index,
                                      ),
                                    ],
                                  );
                                },
                                itemCount:
                                    floor_data == null ? 0 : floor_data.length,
                              );
                            }),
                      ),
                    ],
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
