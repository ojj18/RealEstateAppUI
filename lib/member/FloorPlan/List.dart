import 'package:Realify/public/AddLocation/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';

class FloorList extends StatelessWidget {
  FloorList({Key key, this.floor_data, this.index}) : super(key: key);
  final floor_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddLocation()));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(
              width: 1,
              color: ColorConfig.smokeLight,
            ),
          ),
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                  "" + floor_data[index]["image"],
                ),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "" + floor_data[index]["location"],
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.medium,
                    color: ColorConfig.greyDark),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "\$" + floor_data[index]["price"],
                style: TextStyle(
                    fontFamily: FontConfig.bold,
                    fontSize: Sizeconfig.large,
                    color: ColorConfig.dark),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
