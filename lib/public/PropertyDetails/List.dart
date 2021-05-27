import 'package:Realify/themes/TypoGraphy.dart';
import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:Realify/public/PropertyDetails/main.dart';

class RecommendedList extends StatefulWidget {
  RecommendedList({Key key, this.recommended_data, this.index})
      : super(key: key);
  final recommended_data;
  int index;

  @override
  _RecommendedListState createState() => _RecommendedListState();
}

class _RecommendedListState extends State<RecommendedList> {
  bool islike = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PropertyDetails()));
          },
          child: Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConfig.grey.withOpacity(0.2),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        )),
                        child: Image(
                          fit: BoxFit.cover,
                          height: 150,
                          width: 98,
                          image: NetworkImage(
                            "" + widget.recommended_data[widget.index]['image'],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 20,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                          color: ColorConfig.grey,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              MaterialCommunityIcons.check_underline,
                              color: ColorConfig.light,
                              size: Sizeconfig.tiny,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Realify",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.tiny,
                                color: ColorConfig.light,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "\$",
                                        style: TextStyle(
                                          fontFamily: FontConfig.regular,
                                          color: ColorConfig.dark,
                                          fontSize: Sizeconfig.tiny,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "" +
                                          widget.recommended_data[widget.index]
                                              ["price"],
                                      style: TextStyle(
                                        fontFamily: FontConfig.bold,
                                        color: ColorConfig.greyDark,
                                        fontSize: Sizeconfig.large,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "yearly",
                                        style: TextStyle(
                                          fontFamily: FontConfig.regular,
                                          color: ColorConfig.dark,
                                          fontSize: Sizeconfig.tiny,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "" +
                                      widget.recommended_data[widget.index]
                                          ["location"],
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    color: ColorConfig.grey,
                                    fontSize: Sizeconfig.tiny,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                MaterialIcons.favorite,
                                color: (islike
                                    ? ColorConfig.grey.withOpacity(0.2)
                                    : ColorConfig.red),
                                size: Sizeconfig.huge,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (islike) {
                                    islike = false;
                                  } else {
                                    islike = true;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Apartments",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            color: ColorConfig.grey,
                            fontSize: Sizeconfig.tiny,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "" +
                                  widget.recommended_data[widget.index]
                                      ["bedroom"],
                              style: TextStyle(
                                fontFamily: FontConfig.bold,
                                fontSize: Sizeconfig.tiny,
                              ),
                            ),
                            Text(
                              "" +
                                  widget.recommended_data[widget.index]
                                      ["bathroom"],
                              style: TextStyle(
                                fontFamily: FontConfig.bold,
                                fontSize: Sizeconfig.tiny,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                "" +
                                    widget.recommended_data[widget.index]
                                        ["area"],
                                style: TextStyle(
                                  fontFamily: FontConfig.bold,
                                  fontSize: Sizeconfig.tiny,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
