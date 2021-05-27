import 'package:Realify/public/HomePage/main.dart';
import 'package:Realify/themes/TypoGraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ManageAlert extends StatelessWidget {
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
                      "Manage Alerts",
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            'assets/images/file.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, top: 60),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: Image(
                            image: AssetImage(
                              'assets/images/close.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "NO ALERT SETUP!",
                    style: TextStyle(
                      fontFamily: FontConfig.bold,
                      fontSize: Sizeconfig.compact,
                      color: ColorConfig.darkGreen,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 20.0),
                    child: Text(
                      """Nunc imperdiet varius magna. Cras blandit pharetra laoreet. Donec id diam sit amet ex viverra placerat.Nunc nisl ligula, aliquam ut blandit id, scelerisque ut libero. """,
                      style: TextStyle(
                        fontFamily: FontConfig.regular,
                        fontSize: Sizeconfig.small,
                        color: ColorConfig.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 68,
              width: double.maxFinite,
              color: Colors.white,
              child: RaisedButton(
                color: ColorConfig.darkGreen,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "GO BACK",
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
