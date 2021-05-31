import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/base/base_stateless.dart';
import 'package:weather_app/core/components/text/bodytext1_copy.dart';
import 'package:weather_app/core/components/text/headline3_text_copy.dart';
import 'package:weather_app/core/extensions/context_extension.dart';
import 'package:kartal/kartal.dart';
import 'package:weather_app/feature/home/model/home_model.dart';
import 'package:flutter_glow/flutter_glow.dart';

class HomeView extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: CurrentWeather(),
          ),
          Expanded(
            child: Padding(
              padding: context.paddingNormal,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Headline3TextCopy(
                        data: stringContants.today,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          BodyText1Copy(
                            data: stringContants.sevenDays,
                            color: context.colorSchemeSecondary,
                          ),
                          Icon(icon.arrowForward)
                        ],
                      )
                    ],
                  ),
                  context.emptySizedHeightBoxLow3x,
                  Container(
                    //margin: EdgeInsets.only(bottom: context.lowValue),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        homeModel.todayWeather.length,
                        (index) => WeatherView(
                          homeModel: homeModel.todayWeather[index],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CurrentWeather extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return GlowContainer(
      margin: EdgeInsets.all(2),
      //padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
      glowColor: context.colorSchemeSecondaryVariantWithOpacity(0.5),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(context.mediumValue * 1.2),
        bottomRight: Radius.circular(context.mediumValue * 1.2),
      ),
      color: context.colorSchemeSecondaryVariant,
      spreadRadius: 5,
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon.squareGrid,
                  color: context.colorSchemePrimary,
                  size: context.dynamicWidth(0.06),
                ),
                Row(
                  children: [
                    Icon(
                      icon.mapFill,
                      size: context.dynamicWidth(0.06),
                    ),
                    Text(
                      homeModel.currentTemp.location!,
                      style: context.textTheme.headline2,
                    )
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  size: context.dynamicWidth(0.06),
                )
              ],
            ),
            context.emptySizedHeightBoxLow,
            Container(
              padding: context.paddingLow,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.2,
                    color: context.colorSchemePrimary,
                  ),
                  borderRadius: context.normalBorderRadius),
              child: Text(
                stringContants.updating,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
      child: Column(
        children: [
          Text(
            "${homeModel.current.toString()}\u00B0",
            style: context.textTheme.headline4,
          ),
          context.emptySizedHeightBoxLow,
          Image(
            image: AssetImage(homeModel.image!),
            width: context.dynamicWidth(0.12),
            height: context.dynamicHeight(0.05),
          ),
          context.emptySizedHeightBoxLow,
          Text(
            homeModel.time!,
            style: TextStyle(color: context.colorSchemeSecondary),
          )
        ],
      ),
    );
  }
}
