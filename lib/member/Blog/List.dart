import 'package:Realify/member/BlogDetails/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';

class BlogList extends StatelessWidget {
  BlogList({Key key, this.blog_data, this.index}) : super(key: key);
  final blog_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BlogDetail()));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: NetworkImage(
                  "" + blog_data[index]["image"],
                ),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  "" + blog_data[index]["location"],
                  style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.large,
                      color: ColorConfig.dark),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "" + blog_data[index]["btn"],
                        style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.yellow),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Text(
                        "" + blog_data[index]["time"],
                        style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.tiny,
                            color: ColorConfig.greyLight),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  "" + blog_data[index]["desc"],
                  style: TextStyle(
                      fontFamily: FontConfig.regular,
                      fontSize: Sizeconfig.small,
                      color: ColorConfig.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
