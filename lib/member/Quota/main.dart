import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Quota extends StatelessWidget {
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
                      "Quota",
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
                color: ColorConfig.grey.withOpacity(0.3)),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 20,
                      ),
                      child: Text(
                        "QUOTA",
                        style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.compact,
                          color: ColorConfig.dark,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                          height: 2,
                          width: double.maxFinite,
                          color: ColorConfig.grey.withOpacity(0.1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "LISTING QUOTA",
                                style: TextStyle(
                                  fontFamily: FontConfig.bold,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                              Text(
                                "Total0.0",
                                style: TextStyle(
                                  fontFamily: FontConfig.bold,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Used to you",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                      color: ColorConfig.smokeDark,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "0.0",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Available",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                      color: ColorConfig.smokeDark,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "0.0",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                          height: 2,
                          width: double.maxFinite,
                          color: ColorConfig.grey.withOpacity(0.1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "HOT LISTING QUOTA",
                                style: TextStyle(
                                  fontFamily: FontConfig.bold,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                              Text(
                                "Total0.0",
                                style: TextStyle(
                                  fontFamily: FontConfig.bold,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Used to you",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                      color: ColorConfig.smokeDark,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "0.0",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Available",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                      color: ColorConfig.smokeDark,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "0.0",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                          height: 2,
                          width: double.maxFinite,
                          color: ColorConfig.grey.withOpacity(0.1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "SIGNATURE LISTING QUOTA",
                                style: TextStyle(
                                  fontFamily: FontConfig.bold,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                              Text(
                                "Total0.0",
                                style: TextStyle(
                                  fontFamily: FontConfig.bold,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.dark,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Used to you",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                      color: ColorConfig.smokeDark,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "0.0",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Available",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                      color: ColorConfig.smokeDark,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "0.0",
                                  style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.tiny,
                                    color: ColorConfig.dark,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                          height: 2,
                          width: double.maxFinite,
                          color: ColorConfig.grey.withOpacity(0.1)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 20, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CONTACT US",
                            style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non convallis nibh, nec molestie turpis. Sed sem lacus, hendrerit eu convallis at, varius vel risus. Etiam nunc est, posuere ac erat ut, imperdiet congue ex. Nullam in maximus libero. Nulla convallis in ex ac ultrices. Cras lobortis venenatis libero vitae vestibulum. Cras libero urna, placerat at ligula eu, malesuada egestas leo. Nullam ipsum metus, fringilla nec dolor quis, faucibus pharetra est.",
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 20, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WHAT ARE HOT LISTING?",
                            style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Maecenas eget lobortis nunc. Aenean volutpat consequat orci. Cras bibendum magna quis vehicula semper. Ut ultrices urna lorem, at cursus quam laoreet vitae. Lorem ipsum dolor sit amet, consectetu adipiscing elit. ",
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        right: 20,
                        left: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WHAT ARE SIGNATURE LISTING?",
                            style: TextStyle(
                              fontFamily: FontConfig.bold,
                              fontSize: Sizeconfig.compact,
                              color: ColorConfig.dark,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Aenean et molestie risus. Vivamus quis metus nec magna mollis consectetur. Nam nulla lorem, vestibulum faucibus cursus placerat, dapibus id turpis. Etiam varius lectus vel odio dictum, at elementum lectus dignissim.",
                            style: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
