import 'package:Realify/public/ListRealify/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
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
                                    builder: (context) => ListRealify()));
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
                ),
                Container(
                    height: 1,
                    width: double.maxFinite,
                    color: ColorConfig.grey.withOpacity(0.3)),
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      GoogleMap(
                        zoomControlsEnabled: false,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(37.78825, -122.4324),
                          zoom: 15.0,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ListRealify()));
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
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
                                    Feather.list,
                                    color: ColorConfig.darkGreen,
                                    size: Sizeconfig.huge,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "List View",
                                      style: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: ColorConfig.darkGreen,
                                      ),
                                    ),
                                  )
                                ],
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
        ),
      ),
    );
  }
}
