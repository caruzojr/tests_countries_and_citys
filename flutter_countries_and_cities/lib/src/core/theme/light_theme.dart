import 'package:flutter/material.dart';

import '../data/constants/constants.dart';

ThemeData lightTheme() {
  return ThemeData(
    primarySwatch: ZeraColors.zPrimaryColor,
    brightness: Brightness.light,
    // primaryColor: Colors.lightBlue[800],
    //primaryColor: ColorDefaultConst.zPrimaryColor,
    // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorDefaultConst.zAccentColor),
    // fontFamily: FontFamilyDefaultConst.zFontBasic,
    scaffoldBackgroundColor: ZeraColors.zNeutralColor.shade50,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ZeraColors.zPrimaryColor,
        elevation: 0,
        fixedSize: const Size(double.infinity, 50),
        textStyle: TextStyle(
          fontFamily: FontFamilyDefaultConst.zFontBasic,
          fontWeight: FontWeight.bold,
        ),
        side: const BorderSide(
          style: BorderStyle.none,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: const EdgeInsets.all(16.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ZeraColors.zNeutralColor.shade200,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ZeraColors.zPrimaryColor.shade500,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ZeraColors.zAccentColor.shade500,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ZeraColors.zAccentColor.shade500,
        ),
      ),
      suffixIconColor: ZeraColors.zNeutralColor.shade300,
      errorStyle: TextStyle(
        color: ZeraColors.zAccentColor.shade500,
      ),
      labelStyle: TextStyle(
        fontFamily: FontFamilyDefaultConst.zFontBasic,
        fontSize: FontSizeDefaultConst.zFontSizeM,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        fontFamily: FontFamilyDefaultConst.zFontBasic,
        fontSize: FontSizeDefaultConst.zFontSizeM,
        color: ZeraColors.zNeutralColor.shade200,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: FontFamilyDefaultConst.zFontBasic,
        fontSize: FontSizeDefaultConst.zFontSizeXXXL,
        color: ZeraColors.zPrimaryColor,
        fontWeight: FontWeight.w900,
        height: 1,
        letterSpacing: -2,
      ),
      bodyText1: TextStyle(
        fontFamily: FontFamilyDefaultConst.zFontBasic,
        color: ZeraColors.zSecondaryColor,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        fontFamily: FontFamilyDefaultConst.zFontBasic,
        fontSize: FontSizeDefaultConst.zFontSizeL,
        color: ZeraColors.zNeutralColor[700],
        height: 1.2,
      ),
      subtitle1: TextStyle(
        fontFamily: FontFamilyDefaultConst.zFontBasic,
        fontSize: FontSizeDefaultConst.zFontSizeXL,
        color: ZeraColors.zNeutralColor[700],
        fontStyle: FontStyle.italic,
      ),
      subtitle2: TextStyle(
        fontFamily: FontFamilyDefaultConst.zFontBasic,
        fontSize: FontSizeDefaultConst.zFontSizeS,
        color: ZeraColors.zNeutralColor[700],
      ),
    ),
  );
}
