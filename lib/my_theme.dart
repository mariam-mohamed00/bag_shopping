import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xff517261);
  static Color blackColor = Color(0xff1E1E1E);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color greyColor = Color(0xffA7A6A5);
  static Color greyColorBackGround = Color(0xffE2E3E2);

  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w500, color: blackColor),
      titleMedium: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: blackColor),
      titleSmall: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: greyColor),
    ),
  );
}
