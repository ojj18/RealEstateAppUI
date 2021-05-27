import 'package:Realify/public/SignIn/main.dart';
import 'package:Realify/public/SignUp/DropDown.dart';
import 'package:Realify/public/SignUp/userFields.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import 'package:Realify/member/settings/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState() {
      selectedRadio = val;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      iconSize: Sizeconfig.huge,
                      color: ColorConfig.dark,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.1),
                    child: Text(
                      "Sign Up",
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
            Expanded(
              flex: 14,
              child: Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        UserFields(),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorConfig.smoke,
                                  border: Border.all(
                                    width: 1,
                                    color: ColorConfig.smokeLight,
                                  ),
                                ),
                                child: Dropdown(),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: ColorConfig.smokeLight,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "9876543210",
                                      hintStyle: TextStyle(
                                        fontFamily: FontConfig.regular,
                                        fontSize: Sizeconfig.small,
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        InkWell(
                          onTap: () {
                            showDialogBox(context);
                          },
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Select Role",
                                    style: TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.grey,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Icon(
                                      Foundation.asterisk,
                                      size: Sizeconfig.small,
                                      color: ColorConfig.darkGreen,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 3.5, bottom: 20),
                                child: Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Icon(
                                Foundation.asterisk,
                                size: Sizeconfig.small,
                                color: ColorConfig.darkGreen,
                              ),
                            ),
                            Text(
                              "All Fields are required",
                              style: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'By Clicking Create Account, I agree the Terms & Conditions',
                              style: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                child: Text(
                  "Create Account",
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
          contentPadding: EdgeInsets.all(0),
          content: Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 0.1,
            child: Column(
              children: [
                Expanded(
                  flex: SizeConfig.isMobilePortrait ? 1 : 2,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 5),
                    color: Colors.white,
                    child: Row(
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
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            height: 30,
                            width: double.maxFinite,
                            color: ColorConfig.smokeDark,
                            child: Text(
                              "Individual",
                              style: TextStyle(
                                fontFamily: FontConfig.bold,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.dark,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Owner',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 0,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                  print("Radio $val");
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Tenant / Investor',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 1,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                  print("Radio $val");
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Agent / Broker',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 2,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                  print("Radio $val");
                                },
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            height: 30,
                            width: double.maxFinite,
                            color: ColorConfig.smokeDark,
                            child: Text(
                              "Company",
                              style: TextStyle(
                                fontFamily: FontConfig.bold,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.dark,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Agent / Brokerage',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 3,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Corporate Investor',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 4,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Developer',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 5,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Property/Asset Manager',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 6,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Appraise',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 7,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Mortgage Broker',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 8,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Listing Administrator',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 9,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Researcher',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 10,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Architech',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 11,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: new Text(
                                  'Builder',
                                  style: new TextStyle(
                                      fontFamily: FontConfig.regular,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.dark),
                                ),
                              ),
                              Radio(
                                activeColor: Colors.green,
                                value: 12,
                                groupValue: selectedRadio,
                                onChanged: (int val) {
                                  setSelectedRadio(val);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: SizeConfig.isMobilePortrait ? 1 : 2,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: RaisedButton(
                      elevation: 0.0,
                      color: ColorConfig.darkGreen,
                      onPressed: () {
                        //Todo: select the role and navigate//
                      },
                      child: Text(
                        'DONE',
                        style: TextStyle(
                          fontFamily: FontConfig.bold,
                          fontSize: Sizeconfig.small,
                          color: ColorConfig.light,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
