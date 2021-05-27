import 'package:Realify/public/Filter/main.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class AddTabBar1 extends StatefulWidget {
  @override
  _AddTabBar1State createState() => _AddTabBar1State();
}

class _AddTabBar1State extends State<AddTabBar1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  FontAwesome5.clipboard_list,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Property Details",
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
          Propertytype(),
          Container(
            height: 70,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      right: 15,
                      left: 10,
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorConfig.smokeLight,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          MaterialIcons.location_on,
                          size: 20,
                          color: ColorConfig.grey,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: TextField(
                              style: TextStyle(
                                fontFamily: FontConfig.regular,
                                fontSize: Sizeconfig.small,
                                color: ColorConfig.greyLight,
                              ),
                              decoration: InputDecoration(
                                hintText: "Select location",
                                hintStyle: TextStyle(
                                  fontFamily: FontConfig.regular,
                                  fontSize: Sizeconfig.small,
                                  color: ColorConfig.greyLight,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  FontAwesome5.clipboard_list,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Property Details",
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              style: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              decoration: InputDecoration(
                hintText: "Property Title",
                hintStyle: TextStyle(
                  fontFamily: FontConfig.regular,
                  fontSize: Sizeconfig.small,
                  color: ColorConfig.dark,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
                height: 1,
                width: double.maxFinite,
                color: ColorConfig.grey.withOpacity(0.3)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              style: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              decoration: InputDecoration(
                hintText: "Property Description",
                hintStyle: TextStyle(
                  fontFamily: FontConfig.regular,
                  fontSize: Sizeconfig.small,
                  color: ColorConfig.dark,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
                height: 1,
                width: double.maxFinite,
                color: ColorConfig.grey.withOpacity(0.3)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  Ionicons.ios_pricetag,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Price",
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              padding: EdgeInsets.only(
                right: 15,
                left: 10,
              ),
              height: 40,
              decoration: BoxDecoration(
                color: ColorConfig.smokeLight,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: TextField(
                    style: TextStyle(
                      fontFamily: FontConfig.regular,
                      fontSize: Sizeconfig.small,
                      color: ColorConfig.dark,
                    ),
                    decoration: InputDecoration(
                      hintText: "Price*",
                      hintStyle: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.dark,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  AntDesign.appstore_o,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Area",
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
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 15,
              left: 10,
            ),
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      right: 15,
                      left: 10,
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: ColorConfig.smokeLight,
                        )),
                    child: Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: TextField(
                          style: TextStyle(
                            fontFamily: FontConfig.regular,
                            fontSize: Sizeconfig.small,
                            color: ColorConfig.dark,
                          ),
                          decoration: InputDecoration(
                            hintText: "Price*",
                            hintStyle: TextStyle(
                              fontFamily: FontConfig.regular,
                              fontSize: Sizeconfig.small,
                              color: ColorConfig.dark,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: ColorConfig.smokeLight,
                        border: Border.all(
                          width: 1,
                          color: ColorConfig.smokeLight,
                        ),
                        borderRadius: BorderRadius.circular(3)),
                    child: Areadrop1(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  FontAwesome5.hashtag,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Permit Number",
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: TextFormField(
              style: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              decoration: InputDecoration(
                hintText: "e.g 1234",
                hintStyle: TextStyle(
                  fontFamily: FontConfig.regular,
                  fontSize: Sizeconfig.small,
                  color: ColorConfig.dark,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
                height: 1,
                width: double.maxFinite,
                color: ColorConfig.grey.withOpacity(0.3)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  Ionicons.ios_call,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Contact Details",
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: TextFormField(
              style: TextStyle(
                fontFamily: FontConfig.regular,
                fontSize: Sizeconfig.small,
                color: ColorConfig.dark,
              ),
              decoration: InputDecoration(
                hintText: "someone@qwer.com",
                hintStyle: TextStyle(
                  fontFamily: FontConfig.regular,
                  fontSize: Sizeconfig.small,
                  color: ColorConfig.dark,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
                height: 1,
                width: double.maxFinite,
                color: ColorConfig.grey.withOpacity(0.3)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
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
                    child: Dropdown1(),
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
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 1,
              width: double.maxFinite,
              color: ColorConfig.grey.withOpacity(0.3)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  FontAwesome5.list_alt,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Property Features",
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              padding: EdgeInsets.only(
                right: 15,
                left: 10,
              ),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: ColorConfig.smokeLight,
                ),
              ),
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: TextField(
                    style: TextStyle(
                      fontFamily: FontConfig.regular,
                      fontSize: Sizeconfig.small,
                      color: ColorConfig.dark,
                    ),
                    decoration: InputDecoration(
                      hintText: "abc...",
                      hintStyle: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.dark,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Icon(
                  Entypo.image_inverted,
                  size: Sizeconfig.huge,
                  color: ColorConfig.darkGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Property Image",
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
            child: InkWell(
              onTap: () {},
              child: DottedBorder(
                strokeWidth: 2,
                color: ColorConfig.greyLight,
                strokeCap: StrokeCap.butt,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Image(
                      height: 72,
                      width: 72,
                      image: AssetImage("assets/images/interface.png"),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Areadrop1 extends StatefulWidget {
  @override
  _Areadrop1State createState() => _Areadrop1State();
}

class _Areadrop1State extends State<Areadrop1> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'Sq.M.',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'Sq.Ft.',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
        // overflow: TextOverflow.ellipsis,
      ),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'Sq.Yd',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
        // overflow: TextOverflow.ellipsis,
      ),
      value: 3,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            // itemHeight: 2,
            iconSize: 25,
            elevation: 0,
            value: selected,
            hint: Text(
              'Sq.M.',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
            ),
            items: listDrop,
            onChanged: (value) {
              selected = value;
              setState(() {});
            },
          ),
        ));
  }
}

class Dropdown1 extends StatefulWidget {
  @override
  _Dropdown1State createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Text(
        '144',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        '62',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
        // overflow: TextOverflow.ellipsis,
      ),
      value: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            // itemHeight: 2,
            iconSize: 25,
            elevation: 0,
            value: selected,
            hint: Text(
              '144',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
            ),
            items: listDrop,
            onChanged: (value) {
              selected = value;
              setState(() {});
            },
          ),
        ));
  }
}
