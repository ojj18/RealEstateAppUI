import 'package:Realify/member/Blog/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:Realify/themes/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BlogDetail extends StatelessWidget {
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Blog()));
                      },
                      iconSize: Sizeconfig.huge,
                      color: ColorConfig.dark,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.1),
                    child: Text(
                      "Blog",
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/1170686/pexels-photo-1170686.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      ),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Text(
                        "Soak up the outdoors at Port Saeed Plaza Park Dubai",
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
                          Container(
                            height: 20,
                            width: 75,
                            padding: EdgeInsets.only(top: 5.0),
                            color: ColorConfig.yellow,
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "PLUSE",
                                  style: TextStyle(
                                      fontFamily: FontConfig.bold,
                                      fontSize: Sizeconfig.small,
                                      color: ColorConfig.light),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Text(
                              "4 MIN READ",
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogDetail()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Octicons.primitive_dot,
                              size: Sizeconfig.compact,
                              color: ColorConfig.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Things to do in Port Saeed Plaza Park",
                                style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.small,
                                    color: ColorConfig.skyBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogDetail()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Octicons.primitive_dot,
                              size: Sizeconfig.compact,
                              color: ColorConfig.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Things to do near Port Saeed Plaza Park",
                                style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.small,
                                    color: ColorConfig.skyBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogDetail()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Octicons.primitive_dot,
                              size: Sizeconfig.compact,
                              color: ColorConfig.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Port Saeed Plaza Park Location",
                                style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.small,
                                    color: ColorConfig.skyBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogDetail()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Octicons.primitive_dot,
                              size: Sizeconfig.compact,
                              color: ColorConfig.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Getting there",
                                style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.small,
                                    color: ColorConfig.skyBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogDetail()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Octicons.primitive_dot,
                              size: Sizeconfig.compact,
                              color: ColorConfig.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "FAQs",
                                style: TextStyle(
                                    fontFamily: FontConfig.regular,
                                    fontSize: Sizeconfig.small,
                                    color: ColorConfig.skyBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15, bottom: 20),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non convallis nibh, nec molestie turpis. Sed sem lacus, hendrerit eu convallis at, varius vel risus. Etiam nunc est, posuere ac erat ut, imperdiet congue ex. Nullam in maximus libero. Nulla convallis in ex a cultrices. Cras lobortis venenatis libero vitae vestibulum. Cras libero urna, placerat at ligula eu, malesuada egestas leo. Nullam ipsum metus, fringilla nec dolor quis, faucibus pharetra est.",
                        style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.medium,
                            color: ColorConfig.grey),
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
