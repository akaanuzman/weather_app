import 'package:flutter/material.dart';
import 'package:weather_app/core/init/color/app_color.dart';

import 'IAppTheme.dart';

class AppTheme extends IAppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppTheme.init();
      return _instance!;
    }
  }

  AppTheme.init();

  AppColor get _appColor => AppColor.init();

  @override
  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: _appColor.blackPearl,
        iconTheme: _iconThemeData,
        colorScheme: _colorScheme,
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
        primaryColor: Colors.indigo.shade700,
        textTheme: _textTheme,
      );

  IconThemeData get _iconThemeData => IconThemeData(
        color: Colors.white,
        size: 15,
      );

  ColorScheme get _colorScheme => ColorScheme(
      primary: Colors.white,
      primaryVariant: Colors.white10,
      secondary: Colors.grey,
      secondaryVariant: _appColor.azureRadiance,
      surface: Colors.red,
      background: Colors.black,
      error: Colors.teal.shade800,
      onPrimary: Colors.pink.shade800,
      onSecondary: Colors.deepPurple.shade900,
      onSurface: Colors.lightBlue,
      onBackground: Colors.brown,
      onError: Colors.pink.shade300,
      brightness: Brightness.light);

  TextTheme get _textTheme => TextTheme(
        //XX
        headline1: TextStyle(
          color: Color(0xfffafafa),
          fontSize: 35,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        headline2: TextStyle(
          //XX
          color: Color(0xfffafafa),
          fontSize: 30,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline3: TextStyle(
          //XX
          color: Color(0xfffafafa),
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline4: TextStyle(
          //XX
          color: Color(0xfffafafa),
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline5: TextStyle(
          //XX
          color: Color(0xfffafafa),
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline6: TextStyle(
          //XX
          color: Color(0xfffafafa),
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle1: TextStyle(
          color: Color(0xfffafafa),
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        bodyText1: TextStyle(
          color: Color(0xfffafafa),
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        bodyText2: TextStyle(
          color: Color(0xffffffff),
          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        caption: TextStyle(
          color: Color(0xb3ffffff),
          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: Color(0xffffffff),
          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle2: TextStyle(
          color: Color(0xffffffff),
          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        overline: TextStyle(
          color: Color(0xffffffff),
          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      );
}
