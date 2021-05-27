import 'package:Realify/member/AddProperty/main.dart';
import 'package:Realify/public/Filter/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import 'package:Realify/widget/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: Builder(
        builder: (context) => SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.pexels.com/photos/2574631/pexels-photo-2574631.jpeg?cs=srgb&dl=pexels-shvets-anna-2574631.jpg&fm=jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(49, 122, 87, 1),
                        Color.fromRGBO(0, 0, 0, 0.8)
                      ]),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    MaterialIcons.sort,
                    color: ColorConfig.light,
                    size: Sizeconfig.huge,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      "Realify",
                      style: TextStyle(
                          fontFamily: FontConfig.logoFont,
                          fontSize: 56,
                          color: ColorConfig.light),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Find properties in USA on the go",
                      style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.light),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    width: double.maxFinite,
                    child: RaisedButton(
                      color: ColorConfig.lightGreen,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Filter()));
                      },
                      child: Text(
                        "Let's Search",
                        style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.light,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: ColorConfig.light,
                          )),
                      width: double.maxFinite,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddProperty()));
                        },
                        child: Text(
                          "Add Property",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.light,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.isMobilePortrait ? 150 : 70,
                  ),
                  Center(
                    child: Text(
                      "Continue your last search",
                      style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.light),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, bottom: 10),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          color: ColorConfig.light,
                        ),
                      ),
                      width: double.maxFinite,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddProperty()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Add Property",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.light,
                              ),
                            ),
                            Icon(
                              Ionicons.ios_arrow_forward,
                              size: Sizeconfig.huge,
                              color: ColorConfig.light,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
