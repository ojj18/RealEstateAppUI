import 'package:Realify/public/PropertyDetails/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class EmailPage extends StatefulWidget {
  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  bool checkBoxValue = true;
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
                      "Email",
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
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact agent for more information',
                      style: TextStyle(
                        fontFamily: FontConfig.bold,
                        fontSize: Sizeconfig.huge,
                        color: ColorConfig.dark,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.dark,
                        ),
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                      height: 0,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.dark,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                      height: 0,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.dark,
                        ),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "Phone number",
                          hintStyle: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                      height: 0,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc non convallis nibh, nec molestie turpis. Sed sem lacus,hendrerit eu convallis at, varius vel risus.",
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.medium,
                        color: ColorConfig.dark,
                      ),
                    ),
                    Divider(
                      color: ColorConfig.grey.withOpacity(0.3),
                      height: 0,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.greenAccent,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Keep me informed about similar properties",
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: ColorConfig.grey.withOpacity(0.3)),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 68,
              width: double.maxFinite,
              color: Colors.white,
              child: RaisedButton(
                color: ColorConfig.darkGreen,
                onPressed: () {},
                child: Text(
                  "Send",
                  style: TextStyle(
                    fontFamily: FontConfig.bold,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.light,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
