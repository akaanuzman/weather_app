import 'package:flutter/material.dart';

import '../../feature/home/model/home_model.dart';
import '../constants/string/string_constants.dart';
import '../init/icon/app_icon.dart';

abstract class BaseStateless extends StatelessWidget {
  StringConstants get stringContants => StringConstants.init();
  AppIcon get icon => AppIcon.init();
  HomeModel get homeModel => HomeModel();

  BorderRadius borderRadiusOnly(double leftValue, double rightValue) =>
      BorderRadius.only(
        bottomLeft: Radius.circular(leftValue),
        bottomRight: Radius.circular(rightValue),
      );
}
