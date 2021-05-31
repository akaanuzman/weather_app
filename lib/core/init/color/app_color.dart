import 'package:flutter/material.dart';

class AppColor {
  static AppColor? _instance;
  static AppColor get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppColor.init();
      return _instance!;
    }
  }

  AppColor.init();

  final Color blackPearl = Color(0xff030317);
  final Color azureRadiance = Color(0xff00A1FF);
}
