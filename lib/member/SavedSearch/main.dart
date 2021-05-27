import 'dart:async';
import 'dart:convert';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shimmer/shimmer.dart';
import 'List.dart';

class SavedSearch extends StatefulWidget {
  SavedSearch({
    Key key,
  }) : super(key: key);
  @override
  _SavedSearchState createState() => _SavedSearchState();
}

class _SavedSearchState extends State<SavedSearch> {
  bool isloaded = true;
  @override
  Widget build(BuildContext context) {
    Timer timer = Timer(Duration(seconds: 3), () {
      setState(() {
        isloaded = false;
      });
    });
    return Scaffold(
      backgroundColor: ColorConfig.light,
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
                                builder: (context) => HomePage()));
                      },
                      iconSize: Sizeconfig.huge,
                      color: ColorConfig.dark,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.1),
                    child: Text(
                      "Saved Searches",
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
                    .loadString('assets/json/search.json'),
                builder: (context, snapshot) {
                  var saved_data = json.decode(snapshot.data.toString());
                  return isloaded
                      ? Shimmer.fromColors(
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return ShimmerLayout();
                            },
                            itemCount:
                                saved_data == null ? 0 : saved_data.length,
                          ),
                          baseColor: Colors.grey[350],
                          highlightColor: Colors.grey[350],
                        )
                      : ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                SavedList(
                                  saved_data: saved_data,
                                  index: index,
                                ),
                                Divider(
                                    color: ColorConfig.grey.withOpacity(0.3)),
                              ],
                            );
                          },
                          itemCount: saved_data == null ? 0 : saved_data.length,
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 10,
              width: 300,
              color: Colors.grey[350],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 10,
              width: 250,
              color: Colors.grey[350],
            ),
          ],
        ),
      ),
    );
  }
}
