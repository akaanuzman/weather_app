import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:kartal/kartal.dart';
import '../column/column_weather.dart';
import '../glowtext/high_glow_text.dart';
import '../icon/normal_icon.dart';
import '../text/headline2_text_copy.dart';
import '../../../feature/detail/view/detail_view.dart';

import '../../base/base_stateless.dart';
import '../../extensions/context_extension.dart';
import '../text/headline3_text_copy.dart';
import '../text/headline5_text_copy.dart';

class CurrentWeather extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return GlowContainer(
      margin: EdgeInsets.all(2),
      glowColor: context.colorSchemeSecondaryVariantWithOpacity(0.5),
      borderRadius: _buildBorderRadius(context),
      color: context.colorSchemeSecondaryVariant,
      spreadRadius: 5,
      child: _buildMidItems(context),
    );
  }

  BorderRadius _buildBorderRadius(BuildContext context) => BorderRadius.only(
        bottomLeft: Radius.circular(context.mediumValue * 1.2),
        bottomRight: Radius.circular(context.mediumValue * 1.2),
      );

  Padding _buildMidItems(BuildContext context) => Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            _buildTopRow,
            context.emptySizedHeightBoxLow,
            _buildUpdatingTextContainer(context),
            _buildMiddleContainer(context),
            Divider(color: context.colorSchemePrimary),
            _buildGoToDetailPage(context)
          ],
        ),
      );

  Row get _buildTopRow => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NormalIcon(icon: icon.squareGrid),
          _buildTopMidRow,
          NormalIcon(icon: icon.moreVert)
        ],
      );

  Row get _buildTopMidRow => Row(
        children: [
          NormalIcon(icon: icon.mapFill),
          Headline2TextCopy(data: homeModel.currentTemp.location!)
        ],
      );

  Container _buildUpdatingTextContainer(BuildContext context) => Container(
        padding: context.paddingLow,
        decoration: BoxDecoration(
            border: Border.all(width: 0.2, color: context.colorSchemePrimary),
            borderRadius: context.normalBorderRadius),
        child: _buildUpdatingText,
      );

  Text get _buildUpdatingText => Text(
        stringContants.updating,
        style: TextStyle(fontWeight: FontWeight.bold),
      );

  Container _buildMiddleContainer(BuildContext context) => Container(
        height: context.dynamicHeight(0.52),
        child: Stack(
          children: [
            Image(
              image: AssetImage(homeModel.currentTemp.image!),
            ),
            _buildMiddleTexts(context)
          ],
        ),
      );

  Positioned _buildMiddleTexts(BuildContext context) => Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Column(
          children: [
            HighGlowText(model: homeModel),
            context.emptySizedHeightBoxLow,
            Headline3TextCopy(data: homeModel.currentTemp.name!),
            Headline5TextCopy(data: homeModel.currentTemp.day!)
          ],
        ),
      );

  GestureDetector _buildGoToDetailPage(BuildContext context) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailView(),
            ),
          );
        },
        child: _buildStatisticsRow,
      );

  Row get _buildStatisticsRow => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ColumnWeather(
            titleText: "${homeModel.currentTemp.wind} Km/h",
            subTitleText: stringContants.wind,
          ),
          ColumnWeather(
            titleText: "${homeModel.currentTemp.humidity} %",
            subTitleText: stringContants.humidity,
          ),
          ColumnWeather(
            titleText: "${homeModel.currentTemp.chanceRain} %",
            subTitleText: stringContants.rain,
          ),
        ],
      );
}
