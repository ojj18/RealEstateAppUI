import 'package:Realify/public/Filter/TabBar1.dart';
import 'package:Realify/public/Filter/TabBar2.dart';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/public/ListRealify/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> with TickerProviderStateMixin {
  TabController tabController;
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 2);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

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
                          icon: Icon(AntDesign.close),
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
                          "Filter",
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
                        "Reset",
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
                color: ColorConfig.grey.withOpacity(0.3)),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                controller: tabController,
                tabs: [
                  Expanded(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: tabController.index == 0
                              ? ColorConfig.lightGreen
                              : ColorConfig.light,
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                          border: Border.all(
                              width: 1, color: ColorConfig.smokeLight)),
                      child: Tab(
                        child: Text(
                          "Buy",
                          style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.small,
                              color: tabController.index == 0
                                  ? ColorConfig.light
                                  : ColorConfig.grey),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: tabController.index == 1
                              ? ColorConfig.lightGreen
                              : ColorConfig.light,
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                          border: Border.all(
                              width: 1, color: ColorConfig.smokeLight)),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Tab(
                        child: Text(
                          "Rent",
                          style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.small,
                              color: tabController.index == 1
                                  ? ColorConfig.light
                                  : ColorConfig.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  TabBar1(),
                  TabBar2(),
                ],
              ),
            ),
            Container(
              height: 68,
              width: double.maxFinite,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: RaisedButton(
                elevation: 0.0,
                color: ColorConfig.darkGreen,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListRealify()));
                },
                child: Text(
                  "Search",
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

//  TODO: price ranging dialog box
  Widget showDialogBox(BuildContext context) {
    TabController controller;
    void initState() {
      super.initState();
      controller = new TabController(vsync: this, length: 1);
      controller.addListener(_handleTabSelection);
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.all(0),
            content: Container(
              height: SizeConfig.isMobilePortrait
                  ? MediaQuery.of(context).size.height / 1.8
                  : MediaQuery.of(context).size.height / 1,
              width: MediaQuery.of(context).size.width / 0.1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              MaterialCommunityIcons.close,
                              size: 24,
                              color: ColorConfig.greyDark,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    child: Center(
                                      child: Text("MIN:"),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    child: Center(
                                      child: Text("MAX:"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        width: 1,
                                        color: ColorConfig.smokeDark,
                                      ),
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: FontConfig.regular,
                                          fontSize: Sizeconfig.small,
                                          color: ColorConfig.grey,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: "0",
                                          hintStyle: TextStyle(
                                            fontFamily: FontConfig.regular,
                                            fontSize: Sizeconfig.small,
                                            color: ColorConfig.grey,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        width: 1,
                                        color: ColorConfig.smokeDark,
                                      ),
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: FontConfig.regular,
                                          fontSize: Sizeconfig.small,
                                          color: ColorConfig.grey,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: "0",
                                          hintStyle: TextStyle(
                                            fontFamily: FontConfig.regular,
                                            fontSize: Sizeconfig.small,
                                            color: ColorConfig.grey,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 200,
                                    padding: EdgeInsets.only(
                                        left: 15, right: 15, top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        width: 1,
                                        color: ColorConfig.smokeDark,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConfig.lightGreenBg,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "4,000",
                                                  style: TextStyle(
                                                    fontFamily: FontConfig.bold,
                                                    fontSize: Sizeconfig.medium,
                                                    color:
                                                        ColorConfig.lightGreen,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                        ColorConfig.smokeLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "4,500",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        FontConfig.regular,
                                                    fontSize: Sizeconfig.medium,
                                                    color: ColorConfig.dark,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                        ColorConfig.smokeLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "5,000",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        FontConfig.regular,
                                                    fontSize: Sizeconfig.medium,
                                                    color: ColorConfig.dark,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                        ColorConfig.smokeLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "5,500",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        FontConfig.regular,
                                                    fontSize: Sizeconfig.medium,
                                                    color: ColorConfig.dark,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Container(
                                    height: 200,
                                    padding: EdgeInsets.only(
                                        left: 15, right: 15, top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        width: 1,
                                        color: ColorConfig.smokeDark,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConfig.lightGreenBg,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "6,000",
                                                  style: TextStyle(
                                                    fontFamily: FontConfig.bold,
                                                    fontSize: Sizeconfig.medium,
                                                    color:
                                                        ColorConfig.lightGreen,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                        ColorConfig.smokeLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "6,500",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        FontConfig.regular,
                                                    fontSize: Sizeconfig.medium,
                                                    color: ColorConfig.dark,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                        ColorConfig.smokeLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "7,000",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        FontConfig.regular,
                                                    fontSize: Sizeconfig.medium,
                                                    color: ColorConfig.dark,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Expanded(
                                            child: Container(
                                              height: 30,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                        ColorConfig.smokeLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "7,500",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        FontConfig.regular,
                                                    fontSize: Sizeconfig.medium,
                                                    color: ColorConfig.dark,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  width: double.maxFinite,
                                  child: RaisedButton(
                                    color: ColorConfig.light,
                                    shape: Border.all(
                                      width: 1,
                                      color: ColorConfig.darkGreen,
                                    ),
                                    elevation: 0.0,
                                    onPressed: () {},
                                    child: Text(
                                      'RESET',
                                      style: TextStyle(
                                        fontFamily: FontConfig.bold,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.darkGreen,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  width: double.maxFinite,
                                  color: Colors.white,
                                  child: RaisedButton(
                                    elevation: 0.0,
                                    color: ColorConfig.darkGreen,
                                    onPressed: () {
                                      Navigator.pop(context, true);
                                    },
                                    child: Text(
                                      'DONE',
                                      style: TextStyle(
                                        fontFamily: FontConfig.bold,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.light,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

// TODO: property tabbar
class Propertytype extends StatefulWidget {
  @override
  _PropertytypeState createState() => _PropertytypeState();
}

class _PropertytypeState extends State<Propertytype>
    with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: TabBar(
            controller: _tabController,
            tabs: [
              Expanded(
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: _tabController.index == 0
                          ? ColorConfig.lightGreen
                          : ColorConfig.light,
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                      border:
                          Border.all(width: 1, color: ColorConfig.smokeLight)),
                  child: Tab(
                    child: Text(
                      "Residential",
                      style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.small,
                          color: _tabController.index == 0
                              ? ColorConfig.light
                              : ColorConfig.grey),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: _tabController.index == 1
                          ? ColorConfig.lightGreen
                          : ColorConfig.light,
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                      border:
                          Border.all(width: 1, color: ColorConfig.smokeLight)),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Tab(
                    child: Text(
                      "Commercial",
                      style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.small,
                          color: _tabController.index == 1
                              ? ColorConfig.light
                              : ColorConfig.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 150,
          child: TabBarView(
            controller: _tabController,
            children: [
              Residential(),
              Commercial(),
            ],
          ),
        )
      ],
    );
  }
}

// TODO: bedrooms tabbar

class Bedroomtype extends StatefulWidget {
  @override
  _BedroomtypeState createState() => _BedroomtypeState();
}

class _BedroomtypeState extends State<Bedroomtype>
    with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 9);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        tabs: [
          Expanded(
            child: Container(
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                  color: _tabController.index == 0
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              child: Tab(
                child: Text(
                  "studio",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 0
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 1
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "1",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 1
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 2
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "2",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 2
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 3
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "3",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 3
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 4
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "4",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 4
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 5
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "5",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 5
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 6
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "6",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 6
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 7
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "7",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 7
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 8
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "8+",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 8
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// TODO: bathrooms tabbar

class Bathroomtype extends StatefulWidget {
  @override
  _BathroomtypeState createState() => _BathroomtypeState();
}

class _BathroomtypeState extends State<Bathroomtype>
    with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 6);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        tabs: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 0
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "1",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 0
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 1
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "2",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 1
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 2
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "3",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 2
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 3
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "4",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 3
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 4
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "5",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 4
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 5
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "6+",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 5
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// TODO: Rental tabbar

class Rentaltype extends StatefulWidget {
  @override
  _RentaltypeState createState() => _RentaltypeState();
}

class _RentaltypeState extends State<Rentaltype> with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        tabs: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 0
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "Yearly",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 0
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 1
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "Monthly",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 1
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: _tabController.index == 2
                      ? ColorConfig.lightGreen
                      : ColorConfig.light,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(width: 1, color: ColorConfig.smokeLight)),
              height: 40,
              width: 60,
              child: Tab(
                child: Text(
                  "Weekly",
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: _tabController.index == 2
                          ? ColorConfig.light
                          : ColorConfig.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// TODO: Residential Tabbar
class Residential extends StatefulWidget {
  @override
  _ResidentialState createState() => _ResidentialState();
}

class _ResidentialState extends State<Residential>
    with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 9);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        tabs: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 0
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Apartment",
                  style: TextStyle(
                      color: _tabController.index == 0
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 0
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Image(
                    image: NetworkImage(
                      "https://cdn2.iconfinder.com/data/icons/business-formal/64/Business_Apartment-512.png",
                    ),
                    color: ColorConfig.dark,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 1
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Villa",
                  style: TextStyle(
                      color: _tabController.index == 1
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 1
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn.onlinewebfonts.com/svg/img_215746.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 2
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Townhouse",
                  style: TextStyle(
                      color: _tabController.index == 2
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 2
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://png.pngtree.com/svg/20161230/0cf24d299d.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 3
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Penthouse",
                  style: TextStyle(
                      color: _tabController.index == 3
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 3
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBpxiHx96zL8Fzc_bFV3YtFdympMW0I8sd2QcQcCyHk8FTJUE9&usqp=CAU",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 4
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text("    villa\ncompound",
                    style: TextStyle(
                      color: _tabController.index == 4
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey,
                    )),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 4
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn1.iconfinder.com/data/icons/happy-new-year-2020/66/6-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 5
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "    Hotel\nApartment",
                  style: TextStyle(
                      color: _tabController.index == 5
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 5
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn4.iconfinder.com/data/icons/hotel-service-5/300/hotel-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 6
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Residential\nPlot",
                  style: TextStyle(
                      color: _tabController.index == 6
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 6
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/smart-agriculture-and-farming-3/512/41-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 7
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Residential\nFloor",
                  style: TextStyle(
                      color: _tabController.index == 7
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 7
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/smart-agriculture-and-farming-3/512/41-512.pnghttps://thumbs.dreamstime.com/b/apartment-floor-plan-architectural-project-line-icon-vector-symbol-sign-illustration-design-isolated-white-background-150535798.jpg",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 8
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Residential\nBuilding",
                  style: TextStyle(
                      color: _tabController.index == 8
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 8
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn4.iconfinder.com/data/icons/buildings-104/64/apartment-block-residential-flat-buildings-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  TODO Commercial TabBar

class Commercial extends StatefulWidget {
  @override
  _CommercialState createState() => _CommercialState();
}

class _CommercialState extends State<Commercial> with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 14);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        tabs: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 0
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Office",
                  style: TextStyle(
                      color: _tabController.index == 0
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 0
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Image(
                    image: NetworkImage(
                      "https://cdn1.iconfinder.com/data/icons/business-line-47/64/business_Office-512.png",
                    ),
                    color: ColorConfig.dark,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 1
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Shop",
                  style: TextStyle(
                      color: _tabController.index == 1
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 1
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn1.vectorstock.com/i/1000x1000/30/60/shop-market-icon-outline-style-vector-26163060.jpg",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 2
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Warehouse",
                  style: TextStyle(
                      color: _tabController.index == 2
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 2
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn1.vectorstock.com/i/1000x1000/04/15/covered-export-warehouse-icon-outline-style-vector-25200415.jpg",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 3
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Labour\n camp",
                  style: TextStyle(
                      color: _tabController.index == 3
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 3
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn2.iconfinder.com/data/icons/buildings-and-real-estates-1/30/factory-big-7-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 4
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text("Commercial\n  Villa ",
                    style: TextStyle(
                      color: _tabController.index == 4
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey,
                    )),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 4
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS0TXwgGtbb_zUQkANgh--Cixw8GFdoSBug3RX-R4EkEt7DAs0c&usqp=CAU",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 5
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  " Bulk\nUnits",
                  style: TextStyle(
                      color: _tabController.index == 5
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 5
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn4.iconfinder.com/data/icons/shop-and-delivery-1/44/shop_delivery_outline-17-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 6
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Commercial\n  Plot",
                  style: TextStyle(
                      color: _tabController.index == 6
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 6
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn1.iconfinder.com/data/icons/location-and-navigation-black-outline/128/location_and_nav-43-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 7
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Commercial\n  Floor",
                  style: TextStyle(
                      color: _tabController.index == 7
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 7
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://banner2.cleanpng.com/20180429/zze/kisspng-computer-icons-floor-plan-architectural-plan-5ae5d67c29a5a1.6029869615250120921706.jpg",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 8
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Commercial\n  Building",
                  style: TextStyle(
                      color: _tabController.index == 8
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 8
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn4.vectorstock.com/i/1000x1000/71/83/office-building-icon-with-outline-style-vector-21947183.jpg",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 9
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Factory",
                  style: TextStyle(
                      color: _tabController.index == 9
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 9
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn4.iconfinder.com/data/icons/printing-6/64/factory-industry-buildings-office-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 10
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Industrial\n  Land",
                  style: TextStyle(
                      color: _tabController.index == 10
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 10
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSl80EroBjcDMHXevBGFPLFDOKjL25kG3q-fPSUmkF6p2HRkuO6&usqp=CAU",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 11
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Mixed Use\n  Land",
                  style: TextStyle(
                      color: _tabController.index == 11
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 11
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/disasters-linear-black/2048/6731_-_Drought-512.png",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 12
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "Showroom",
                  style: TextStyle(
                      color: _tabController.index == 12
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 12
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSIvpzFBG323PEvwP8pqLQnRy5J0esGWj2-VtX1Q2WjdiA-cBB2&usqp=CAU",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: _tabController.index == 13
                    ? ColorConfig.lightGreen
                    : ColorConfig.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              height: 70,
              width: 70,
              child: Tab(
                child: Text(
                  "  Other\nCommmercial",
                  style: TextStyle(
                      color: _tabController.index == 13
                          ? ColorConfig.lightGreen
                          : ColorConfig.grey),
                ),
                icon: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      border: Border.all(
                          width: 1,
                          color: _tabController.index == 13
                              ? ColorConfig.lightGreen
                              : ColorConfig.smokeDark)),
                  height: 70,
                  width: 70,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/aocB4WgAGvPhRRpzOFA1SqPjOJzjRLd9KzaHy7gaXq7OzWgmfpXu1ZFOCgHU5cw2VHnlJdJB0N9OUnEiordO9p-pwGNY6TNieYpnSLCBZ2iffnY",
                      ),
                      color: ColorConfig.dark,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
