import 'package:flutter/material.dart';

class CurrencyCode extends StatefulWidget {
  @override
  _CurrencyCodeState createState() => _CurrencyCodeState();
}

class _CurrencyCodeState extends State<CurrencyCode> {
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
    listDrop.add(new DropdownMenuItem(
      child: Text(
        "353",
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
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
