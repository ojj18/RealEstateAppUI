import 'dart:convert';

import 'package:Realify/member/Blog/List.dart';
import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
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
                      "Blog",
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
                color: ColorConfig.grey.withOpacity(0.2)),
            Material(
              elevation: 5,
              child: Container(
                height: 70,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          right: 15,
                          left: 10,
                        ),
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 1,
                          color: ColorConfig.smokeLight,
                        )),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Row(
                            children: [
                              Icon(
                                Feather.search,
                                size: Sizeconfig.large,
                                color: ColorConfig.grey,
                              ),
                              SizedBox(width: 10),
                              Flexible(
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/json/blog.json'),
                builder: (context, snapshot) {
                  var blog_data = json.decode(snapshot.data.toString());
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            BlogList(
                              blog_data: blog_data,
                              index: index,
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: blog_data == null ? 0 : blog_data.length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
