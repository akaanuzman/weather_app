import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:kartal/kartal.dart';

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
                    ),
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
                  border:
                      Border.all(width: 0.2, color: context.colorSchemePrimary),
                  borderRadius: context.normalBorderRadius),
              child: Text(
                stringContants.updating,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: context.dynamicHeight(0.52),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(homeModel.currentTemp.image!),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Column(
                        children: [
                          GlowText(
                            "${homeModel.currentTemp.current}",
                            style: TextStyle(
                                height: 0.1,
                                fontSize: 120,
                                fontWeight: FontWeight.bold),
                          ),
                          context.emptySizedHeightBoxLow,
                          Headline3TextCopy(data: homeModel.currentTemp.name!),
                          Headline5TextCopy(data: homeModel.currentTemp.day!)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(color: context.colorSchemePrimary),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  CupertinoIcons.wind,
                  size: context.dynamicHeight(0.018),
                ),
                context.emptySizedHeightBoxLow,
                Headline5TextCopy(data: "${homeModel.currentTemp.wind} Km/h"),
                Headline5TextCopy(data: "Wind")
              ],
            )
          ],
        ),
      ),
    );
  }
}
