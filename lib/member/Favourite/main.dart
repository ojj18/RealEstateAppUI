import 'dart:async';
import 'dart:convert';
import 'package:Realify/member/SavedSearch/List.dart';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:Realify/member/Favourite/List.dart';
import 'package:shimmer/shimmer.dart';

class Favourite extends StatefulWidget {
  Favourite({
    Key key,
  }) : super(key: key);
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  bool isloaded = true;

  @override
  Widget build(BuildContext context) {
    Timer timer = Timer(Duration(seconds: 3), () {
      setState(() {
        isloaded = false;
      });
    });
    return Scaffold(
      backgroundColor: Colors.white,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    iconSize: Sizeconfig.huge,
                    color: ColorConfig.dark,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.1),
                  child: Text(
                    "Favourite",
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
          Divider(color: ColorConfig.grey.withOpacity(0.2)),
          Expanded(
            flex: 1,
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/json/favourite.json'),
              builder: (context, snapshot) {
                var favourite_data = json.decode(snapshot.data.toString());
                return isloaded
                    ? Shimmer.fromColors(
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: ShimmerLayout1(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                          itemCount: favourite_data == null
                              ? 0
                              : favourite_data.length,
                        ),
                        baseColor: Colors.grey[350],
                        highlightColor: Colors.grey[350],
                      )
                    : ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: FavouriteList(
                                  favourite_data: favourite_data,
                                  index: index,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        },
                        itemCount:
                            favourite_data == null ? 0 : favourite_data.length,
                      );
              },
            ),
          ),
        ],
      )),
    );
  }
}

class ShimmerLayout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.grey[350],
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 10,
                  width: 240,
                  color: Colors.grey[350],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 10,
                  width: 200,
                  color: Colors.grey[350],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
