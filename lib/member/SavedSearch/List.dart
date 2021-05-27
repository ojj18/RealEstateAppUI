import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SavedList extends StatelessWidget {
  SavedList({Key key, this.saved_data, this.index}) : super(key: key);
  final saved_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
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
                  Text(
                    '' + saved_data[index]['location'],
                    style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.small,
                      color: ColorConfig.dark,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Text(
                              "PURPOSE:",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.tiny,
                                color: ColorConfig.grey,
                              ),
                            ),
                            Text(
                              '' + saved_data[index]['purpose'],
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.tiny,
                                color: ColorConfig.dark,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Text(
                              "TYPE:",
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.tiny,
                                color: ColorConfig.grey,
                              ),
                            ),
                            Text(
                              '' + saved_data[index]['type'],
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.tiny,
                                color: ColorConfig.dark,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "TYPE:",
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.tiny,
                              color: ColorConfig.grey,
                            ),
                          ),
                          Text(
                            " Residential",
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.tiny,
                              color: ColorConfig.dark,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: ColorConfig.smoke,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Feather.trash_2,
                              size: Sizeconfig.medium,
                              color: ColorConfig.red,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
