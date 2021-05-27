import 'dart:convert';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/public/PropertyDetails/List.dart';
import 'package:Realify/public/MapView/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ListRealify extends StatefulWidget {
  @override
  _ListRealifyState createState() => _ListRealifyState();
}

class _ListRealifyState extends State<ListRealify> {
  int selectedRadio;
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.light,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 15),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      "Realify",
                      style: TextStyle(
                        fontFamily: FontConfig.bold,
                        fontSize: Sizeconfig.large,
                        color: ColorConfig.darkGreen,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialogBox(context);
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontFamily: FontConfig.bold,
                        fontSize: Sizeconfig.medium,
                        color: ColorConfig.darkGreen,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 15, left: 15),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment(0, 0.1),
                      child: Text(
                        "40,523 Residential",
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.medium,
                          color: ColorConfig.greyDark,
                        ),
                      )),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        child: FlatButton(
                          color: ColorConfig.smokeDark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onPressed: () {
                            showDialogBox2(context);
                          },
                          child: Icon(
                            Feather.list,
                            size: Sizeconfig.large,
                            color: ColorConfig.greyDark,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        color: ColorConfig.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Filter",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.medium,
                            color: ColorConfig.light,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: 1,
                width: double.maxFinite,
                color: ColorConfig.grey.withOpacity(0.3)),
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  FutureBuilder(
                      future: DefaultAssetBundle.of(context)
                          .loadString('assets/json/recommended.json'),
                      builder: (context, snapshot) {
                        var recommended_data =
                            json.decode(snapshot.data.toString());
                        return ListView.builder(
                          physics: ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, right: 15, left: 15),
                                    child: RecommendedList(
                                      recommended_data: recommended_data,
                                      index: index,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: recommended_data == null
                              ? 0
                              : recommended_data.length,
                        );
                      }),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Container(
                        height: 35,
                        width: 100,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mapview()));
                          },
                          child: Container(
                            //padding: EdgeInsets.only(left: 10),
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              color: ColorConfig.light,
                              border: Border.all(
                                width: 1,
                                color: ColorConfig.darkGreen,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.md_map,
                                  color: ColorConfig.darkGreen,
                                  size: Sizeconfig.huge,
                                ),
                                Text(
                                  "Map View",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.medium,
                                    color: ColorConfig.darkGreen,
                                  ),
                                )
                              ],
                            ),
                          ),
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
    );
  }

  Widget showDialogBox2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            content: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width / 0.1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SORTING",
                        style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.medium,
                          color: ColorConfig.grey,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          MaterialCommunityIcons.close,
                          size: 24,
                          color: ColorConfig.greyDark,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesome.thermometer_full,
                            color: ColorConfig.grey,
                            size: Sizeconfig.small,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Popular',
                            style: new TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark),
                          ),
                        ],
                      ),
                      Radio(
                          activeColor: Colors.greenAccent,
                          value: 0,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            MaterialCommunityIcons.restore,
                            color: ColorConfig.grey,
                            size: Sizeconfig.small,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          new Text(
                            'Newest',
                            style: new TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark),
                          ),
                        ],
                      ),
                      Radio(
                          activeColor: Colors.greenAccent,
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value;
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesome.tag,
                            color: ColorConfig.grey,
                            size: Sizeconfig.small,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          new Text(
                            'Price (low to high)',
                            style: new TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark),
                          ),
                        ],
                      ),
                      Radio(
                          activeColor: Colors.greenAccent,
                          value: 2,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value;
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesome.tag,
                            color: ColorConfig.grey,
                            size: Sizeconfig.small,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          new Text(
                            'Price (high to low)',
                            style: new TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.medium,
                                color: ColorConfig.dark),
                          ),
                        ],
                      ),
                      Radio(
                          activeColor: Colors.greenAccent,
                          value: 3,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value;
                            });
                          })
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

Widget showDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actionsPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          content: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SAVE SEARCH",
                      style: TextStyle(
                        fontFamily: FontConfig.bold,
                        fontSize: Sizeconfig.medium,
                        color: ColorConfig.grey,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        MaterialCommunityIcons.close,
                        size: 24,
                        color: ColorConfig.greyDark,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 50,
                  // width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      width: 1,
                      color: ColorConfig.smokeDark,
                    ),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: FontConfig.regular,
                      color: ColorConfig.dark,
                      fontSize: Sizeconfig.medium,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Name this search",
                      hintStyle: TextStyle(
                        fontFamily: FontConfig.regular,
                        color: ColorConfig.dark,
                        fontSize: Sizeconfig.medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: RaisedButton(
                    elevation: 0.0,
                    color: ColorConfig.darkGreen,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: ColorConfig.light,
                        fontSize: Sizeconfig.medium,
                        fontFamily: FontConfig.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      });
}
