import 'package:flutter/cupertino.dart';
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
  IconData get squareGrid => CupertinoIcons.square_grid_2x2;
  IconData get mapFill => CupertinoIcons.map_fill;
  IconData get wind => CupertinoIcons.wind;
  IconData get moreVert => Icons.more_vert;
}
