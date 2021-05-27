import 'package:flutter/material.dart';

class LangDrop extends StatefulWidget {
  @override
  _LangDropState createState() => _LangDropState();
}

class _LangDropState extends State<LangDrop> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'English',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          'عربى',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.7),
          ),
        ),
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
              'English.',
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
