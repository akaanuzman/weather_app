import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../feature/home/model/home_model.dart';
import '../../extensions/context_extension.dart';
import '../text/headline4_text_copy.dart';

class WeatherView extends StatelessWidget {
  final HomeModel homeModel;

  const WeatherView({Key? key, required this.homeModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingLow,
      decoration: BoxDecoration(
          border: Border.all(width: 0.2, color: context.colorSchemePrimary),
          borderRadius: context.normalBorderRadius),
      child: _buildWeatherColumn(context),
    );
  }

  Column _buildWeatherColumn(BuildContext context) => Column(
        children: [
          Headline4TextCopy(data: "${homeModel.current.toString()}\u00B0"),
          context.emptySizedHeightBoxLow,
          _buildWeatherImage(context),
          context.emptySizedHeightBoxLow,
          _buildTimeText(context)
        ],
      );

  Image _buildWeatherImage(BuildContext context) => Image(
        image: AssetImage(homeModel.image!),
        width: context.dynamicWidth(0.12),
        height: context.dynamicHeight(0.05),
      );

  Text _buildTimeText(BuildContext context) => Text(
        homeModel.time!,
        style: TextStyle(color: context.colorSchemeSecondary),
      );
}
