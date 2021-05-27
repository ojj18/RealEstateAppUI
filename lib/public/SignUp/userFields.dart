import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class UserFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
        padding: const EdgeInsets.only(top: 38.0),
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
        padding: const EdgeInsets.only(top: 38.0),
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
              hintText: "Password",
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
        padding: const EdgeInsets.only(top: 38.0),
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
              hintText: "Confirm Password",
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
      )
    ]);
  }
}
