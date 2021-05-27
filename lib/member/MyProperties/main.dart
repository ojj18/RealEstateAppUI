import 'dart:convert';

import 'package:Realify/member/Favourite/List.dart';
import 'package:Realify/member/MyProperties/list.dart';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MyProperties extends StatefulWidget {
  MyProperties({
    Key key,
  }) : super(key: key);
  @override
  _MyPropertiesState createState() => _MyPropertiesState();
}

class _MyPropertiesState extends State<MyProperties>
    with TickerProviderStateMixin {
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
                      "My Properties",
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
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                controller: tabController,
                tabs: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: tabController.index == 0
                              ? ColorConfig.lightGreenBg
                              : ColorConfig.light,
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                          border: Border.all(
                              width: 1, color: ColorConfig.smokeLight)),
                      child: Tab(
                        child: Text(
                          "Drafts",
                          style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.grey),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: tabController.index == 1
                              ? ColorConfig.lightGreenBg
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
                          "Uploaded",
                          style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/json/properties.json'),
                builder: (context, snapshot) {
                  var properties_data = json.decode(snapshot.data.toString());
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 20),
                            child: MyPropertiesList(
                              properties_data: properties_data,
                              index: index,
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount:
                        properties_data == null ? 0 : properties_data.length,
                  );
                },
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
                onPressed: () {},
                child: Text(
                  "UPLOAD ALL",
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
