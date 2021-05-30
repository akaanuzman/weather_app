import 'package:flutter/material.dart';

class AppIcon {
  static AppIcon? _instance;
  static AppIcon get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppIcon.init();
      return _instance!;
    }
  }

  AppIcon.init();

  IconData get arrowForward => Icons.arrow_forward_ios_outlined;
}
