import 'package:Realify/member/AddProperty/main.dart';
import 'package:Realify/member/MyProperties/main.dart';
import 'package:Realify/member/Quota/main.dart';
import 'package:Realify/public/SignIn/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'menu.dart';
import 'package:flutter/material.dart';
import 'package:Realify/member/AboutUs/main.dart';
import 'package:Realify/member/ContactUs/main.dart';

class Data2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddProperty()));
          },
          child: Row(
            children: [
              Icon(
                IconName.iconproperty,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.property,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyProperties()));
          },
          child: Row(
            children: [
              Icon(
                IconName.iconmyprperties,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.myprperties,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyProperties()));
          },
          child: Row(
            children: [
              Icon(
                IconName.icondraft,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.draft,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Quota()));
          },
          child: Row(
            children: [
              Icon(
                IconName.iconquota,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.quota,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              Icon(
                IconName.iconsettings,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.settings,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ContactUs()));
          },
          child: Row(
            children: [
              Icon(
                IconName.iconcontactus,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.contactus,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutUs()));
          },
          child: Row(
            children: [
              Icon(
                IconName.iconaboutus,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.aboutus,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignIn()));
          },
          child: Row(
            children: [
              Icon(
                IconName.iconlogout,
                size: Sizeconfig.large,
                color: ColorConfig.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                MenuName.logout,
                style: TextStyle(
                    fontFamily: FontConfig.regular,
                    fontSize: Sizeconfig.small,
                    color: ColorConfig.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
