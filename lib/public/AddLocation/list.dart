import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatelessWidget {
  SelectLocation({Key key, this.location_data, this.index}) : super(key: key);
  final location_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            "" + location_data[index]["title"],
            style: TextStyle(
              fontFamily: FontConfig.regular,
              fontSize: Sizeconfig.medium,
              color: ColorConfig.dark,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "" + location_data[index]["desc"],
            style: TextStyle(
              fontFamily: FontConfig.regular,
              fontSize: Sizeconfig.small,
              color: ColorConfig.grey,
            ),
          )
        ],
      ),
    );
  }
}
