import 'package:Realify/public/HomePage/main.dart';
import 'package:flutter/material.dart';
import 'package:Realify/themes/sizeConfig.dart';

main() => runApp(
      LayoutBuilder(builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
              theme: ThemeData(
                primaryColor: Colors.white,
                accentColor: Colors.transparent,
              ),
            );
          },
        );
      }),
    );
