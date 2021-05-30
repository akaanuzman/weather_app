import 'package:flutter/material.dart';
import 'package:weather_app/core/base/base_stateless.dart';
import 'package:weather_app/core/components/text/bodytext1_copy.dart';
import 'package:weather_app/core/components/text/headline3_text_copy.dart';
import 'package:weather_app/core/extensions/context_extension.dart';
import 'package:kartal/kartal.dart';
import 'package:weather_app/feature/home/model/home_model.dart';

class HomeView extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
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
          )
        ],
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
