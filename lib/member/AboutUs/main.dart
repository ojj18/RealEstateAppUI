import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AboutUs extends StatelessWidget {
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
                      "About Us",
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
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "WHO WE ARE",
                        style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.medium,
                            color: ColorConfig.dark),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '''Lorem ipsum dolor sit amet,consectetur adipiscing elit. Nunc non convallis nibh, necmolestie turpis. Sed sem lacus, hendrerit eu convallis at,varius vel risus. Etiam nunc est, posuere ac erat ut,imperdiet congue ex. Nullam in maximus libero. Nullaconvallis in ex ac ultrices. Cras lobortis venenatislibero vitae vestibulum.''',
                      style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.medium,
                          color: ColorConfig.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "WHAT WE ARE NOT",
                        style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.medium,
                            color: ColorConfig.dark),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '''Donec id diam sit amet ex viverra placerat.Nunc nisl ligula, aliquam ut blandit id, scelerisque ut libero. Phasellus malesuada, sem a viverra commodo, ipsum neque blandit nisi, quis eleifend mauris lacus eget enim. Phasellus molestie odio non ante molestie imperdiet.''',
                      style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.medium,
                          color: ColorConfig.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "HOW WE STARTED OUT",
                        style: TextStyle(
                            fontFamily: FontConfig.bold,
                            fontSize: Sizeconfig.medium,
                            color: ColorConfig.dark),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '''Cras hendrerit, neque ut pulvinar tempor, leo dolor elementum dolor, interdum malesuada mauris augue non tellus. Integer mollis ligula non enim imperdiet rhoncus.Vivamus ac lorem magna.''',
                      style: TextStyle(
                          fontFamily: FontConfig.regular,
                          fontSize: Sizeconfig.medium,
                          color: ColorConfig.grey),
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
