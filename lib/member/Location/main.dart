import 'package:Realify/member/Location/hospital.dart';
import 'package:Realify/member/Location/park.dart';
import 'package:Realify/member/Location/restaurant.dart';
import 'package:Realify/member/Location/school.dart';
import 'package:Realify/public/PropertyDetails/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> with TickerProviderStateMixin {
  bool isIconClick = true;
  TabController tabController;
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 4);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Location & Nearby",
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
              height: 200,
              child: GoogleMap(
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.78825, -122.4324),
                  zoom: 10.0,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                controller: tabController,
                children: [
                  School(),
                  Restaurant(),
                  Hospital(),
                  Park(),
                ],
              ),
            ),
            Container(
              height: 68,
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColorConfig.smoke,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: tabController.index == 0
                                  ? ColorConfig.yellow
                                  : ColorConfig.smoke,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: Icon(
                              Entypo.graduation_cap,
                              color: ColorConfig.light,
                              size: Sizeconfig.compact,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("SCHOOLS")
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: tabController.index == 1
                                  ? ColorConfig.lightGreen
                                  : ColorConfig.smoke,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: Icon(
                              MaterialCommunityIcons.silverware_fork_knife,
                              color: ColorConfig.light,
                              size: Sizeconfig.compact,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("RESTAURANTS")
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: tabController.index == 2
                                  ? ColorConfig.red
                                  : ColorConfig.smoke,
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
                            width: 5,
                          ),
                          Text("HOSPITALS")
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: tabController.index == 3
                                  ? ColorConfig.violet
                                  : ColorConfig.smoke,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: Icon(
                              MaterialIcons.nature_people,
                              color: ColorConfig.light,
                              size: Sizeconfig.compact,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("PARK")
                        ],
                      ),
                    ),
                  ),
                ],
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: TextStyle(
                  fontFamily: FontConfig.regular,
                  color: ColorConfig.grey,
                  fontSize: Sizeconfig.small,
                ),
                labelColor: Colors.black,
                labelStyle: TextStyle(
                  fontFamily: FontConfig.bold,
                  color: ColorConfig.dark,
                  fontSize: Sizeconfig.small,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
