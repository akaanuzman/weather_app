import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:kartal/kartal.dart';
import '../../../core/components/column/column_weather.dart';
import '../../../core/components/icon/normal_icon.dart';
import '../../../core/components/text/headline2_text_copy.dart';
import '../../../core/components/text/headline3_text_copy.dart';
import '../../../core/components/text/headline4_text_copy.dart';
import '../../../core/components/text/headline5_text_copy.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/base/base_stateless.dart';

class DetailView extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Column _buildBody(BuildContext context) {
    return Column(
      children: [
        _buildGlowContainer(context),
        Expanded(
          child: _buildSevenDayWeather,
        ),
      ],
    );
  }

  GlowContainer _buildGlowContainer(BuildContext context) => GlowContainer(
        color: context.colorSchemeSecondaryVariant,
        glowColor: context.colorSchemeSecondaryVariant,
        borderRadius: borderRadiusOnly(
            context.mediumValue * 1.3, context.mediumValue * 1.3),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              context.lowValue, context.lowValue, context.lowValue, 0),
          child: Center(
            child: _buildBodyColumn(context),
          ),
        ),
      );

  Column _buildBodyColumn(BuildContext context) => Column(
        children: [
          _buildTop(context),
          _buildTopMid(context),
          _buildTopBottom(context),
        ],
      );

  Row _buildTop(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildGoToBackPage(context),
          _buildTextIconRow,
          NormalIcon(icon: icon.moreVert)
        ],
      );

  Row _buildTopMid(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildWeatherImage(context), _buildRightTopText(context)],
      );

  Column _buildTopBottom(BuildContext context) => Column(
        children: [
          _buildDivider(context),
          _buidStatisticRow(context),
          context.emptySizedHeightBoxLow3x
        ],
      );

  IconButton _buildGoToBackPage(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
    );
  }

  Wrap get _buildTextIconRow => Wrap(
        spacing: 5,
        children: [
          NormalIcon(icon: Icons.calendar_today),
          Headline3TextCopy(data: stringContants.sevenDays)
        ],
      );

  Container _buildWeatherImage(BuildContext context) => Container(
        width: context.dynamicHeight(0.2),
        height: context.dynamicHeight(0.21),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(homeModel.tomorrowTemp.image!),
          ),
        ),
      );

  Column _buildRightTopText(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Headline2TextCopy(data: stringContants.tomorrow),
          Container(
            height: context.dynamicHeight(0.12),
            child: _buildHighDegreeText,
          ),
          context.emptySizedHeightBoxLow,
          Headline5TextCopy(data: " ${homeModel.tomorrowTemp.name}"),
        ],
      );

  Row get _buildHighDegreeText => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GlowText(
            homeModel.tomorrowTemp.max.toString(),
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
          Headline2TextCopy(data: "/ ${homeModel.tomorrowTemp.min}\u00B0")
        ],
      );

  Divider _buildDivider(BuildContext context) => Divider(
        color: context.colorSchemePrimary,
        indent: 30,
        endIndent: 30,
      );

  Row _buidStatisticRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ColumnWeather(
            iconSize: context.dynamicHeight(0.035),
            titleText: "${homeModel.currentTemp.wind} Km/h",
            subTitleText: stringContants.wind,
          ),
          ColumnWeather(
            iconSize: context.dynamicHeight(0.035),
            titleText: "${homeModel.currentTemp.humidity} %",
            subTitleText: stringContants.humidity,
          ),
          ColumnWeather(
            iconSize: context.dynamicHeight(0.035),
            titleText: "${homeModel.currentTemp.chanceRain} %",
            subTitleText: stringContants.rain,
          ),
        ],
      );

  ListView get _buildSevenDayWeather => ListView.builder(
        itemCount: homeModel.sevenDay.length,
        itemBuilder: (context, index) => ListTile(
            leading: Headline4TextCopy(data: homeModel.sevenDay[index].day!),
            title: _buildWeather(context, index),
            trailing: _buildDegree(index, context)),
      );

  Wrap _buildWeather(BuildContext context, int index) => Wrap(
        spacing: 15,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          context.emptySizedWidthBoxLow,
          Image(
            image: AssetImage(homeModel.sevenDay[index].image!),
            width: context.dynamicWidth(0.1),
          ),
          Headline4TextCopy(data: homeModel.sevenDay[index].name!)
        ],
      );

  Wrap _buildDegree(int index, BuildContext context) => Wrap(
        spacing: 2,
        children: [
          Headline4TextCopy(data: "+${homeModel.sevenDay[index].max} \u00B0"),
          Headline4TextCopy(
            data: "+${homeModel.sevenDay[index].min} \u00B0",
            color: context.colorSchemeSecondary,
          ),
        ],
      );
}
