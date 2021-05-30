import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/string/string_constants.dart';
import 'package:weather_app/core/init/icon/app_icon.dart';
import 'package:weather_app/feature/home/model/home_model.dart';

abstract class BaseStateless extends StatelessWidget {
  StringConstants get stringContants => StringConstants.init();
  AppIcon get icon => AppIcon.init();
  HomeModel get homeModel => HomeModel();
}
