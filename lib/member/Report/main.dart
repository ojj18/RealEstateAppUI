import 'package:Realify/public/PropertyDetails/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  int selectedRadio;
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

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
                                builder: (context) => PropertyDetails()));
                      },
                      iconSize: Sizeconfig.huge,
                      color: ColorConfig.dark,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.1),
                    child: Text(
                      "Report Property",
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
            Divider(color: ColorConfig.grey.withOpacity(0.3)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialogBox(context);
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "select a Problem",
                                style: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Icon(
                                  Foundation.asterisk,
                                  color: ColorConfig.darkGreen,
                                  size: Sizeconfig.small,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(color: ColorConfig.grey.withOpacity(0.3)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: ColorConfig.dark,
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                        ),
                        cursorHeight: 20,
                        cursorColor: ColorConfig.darkGreen,
                        decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                top: 7.0,
                              ),
                              child: Icon(
                                Foundation.asterisk,
                                color: ColorConfig.darkGreen,
                                size: Sizeconfig.small,
                              ),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.5),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: ColorConfig.dark,
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                        ),
                        cursorHeight: 20,
                        cursorColor: ColorConfig.darkGreen,
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Icon(
                                Foundation.asterisk,
                                color: ColorConfig.darkGreen,
                                size: Sizeconfig.small,
                              ),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.5),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: ColorConfig.dark,
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                        ),
                        cursorHeight: 20,
                        cursorColor: ColorConfig.darkGreen,
                        decoration: InputDecoration(
                            hintText: "Description",
                            hintStyle: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Icon(
                                Foundation.asterisk,
                                color: ColorConfig.darkGreen,
                                size: Sizeconfig.small,
                              ),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.5),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: ColorConfig.grey.withOpacity(0.3)),
            Container(
              height: 68,
              width: double.maxFinite,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: RaisedButton(
                elevation: 0.0,
                color: ColorConfig.darkGreen,
                onPressed: () {},
                child: Text(
                  "Send Report",
                  style: TextStyle(
                    color: ColorConfig.light,
                    fontSize: Sizeconfig.small,
                    fontFamily: FontConfig.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            content: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 0.1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SELECT ROLE",
                        style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.medium,
                          color: ColorConfig.grey,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          MaterialCommunityIcons.close,
                          size: 24,
                          color: ColorConfig.greyDark,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Radio(
                              activeColor: Colors.greenAccent,
                              value: 0,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value;
                                });
                              })),
                      new Text(
                        'property location is wrong',
                        style: new TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Radio(
                              activeColor: Colors.greenAccent,
                              value: 1,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value;
                                });
                              })),
                      new Text(
                        'inaccurate property images',
                        style: new TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Radio(
                              activeColor: Colors.greenAccent,
                              value: 2,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value;
                                });
                              })),
                      new Text(
                        'Unauthorized use of images',
                        style: new TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Radio(
                              activeColor: Colors.greenAccent,
                              value: 3,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value;
                                });
                              })),
                      new Text(
                        'Property is not available',
                        style: new TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Radio(
                              activeColor: Colors.greenAccent,
                              value: 4,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value;
                                });
                              })),
                      new Text(
                        'Others',
                        style: new TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
