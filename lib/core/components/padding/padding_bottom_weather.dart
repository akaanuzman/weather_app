import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../base/base_stateless.dart';
import '../../extensions/context_extension.dart';
import '../container/weather_container.dart';
import '../text/bodytext1_copy.dart';
import '../text/headline3_text_copy.dart';

class PaddingBottomWeather extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: Column(
        children: [
          _buildTextIconRow(context),
          context.emptySizedHeightBoxLow3x,
          WeatherContainer(homeModel: homeModel),
        ],
      ),
    );
  }

  Row _buildTextIconRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTodayText,
          Row(
            children: [_buildSevenDaysText(context), _buildRightIcon(context)],
          )
        ],
      );

  Headline3TextCopy get _buildTodayText => Headline3TextCopy(
        data: stringContants.today,
        fontWeight: FontWeight.bold,
      );

  BodyText1Copy _buildSevenDaysText(BuildContext context) => BodyText1Copy(
        data: stringContants.sevenDays,
        color: context.colorSchemeSecondary,
      );

  Icon _buildRightIcon(BuildContext context) => Icon(
        icon.arrowForward,
        color: context.colorSchemeSecondary,
      );
}
