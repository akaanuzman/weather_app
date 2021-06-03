import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../base/base_stateless.dart';
import '../text/headline5_text_copy.dart';
import 'package:kartal/kartal.dart';

class ColumnWeather extends BaseStateless {
  final String titleText;
  final String subTitleText;
  final double? iconSize;

  ColumnWeather({required this.titleText, required this.subTitleText,this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          icon.wind,
          size: iconSize ?? context.dynamicHeight(0.018),
        ),
        context.emptySizedHeightBoxLow,
        Headline5TextCopy(data: titleText),
        Headline5TextCopy(data: subTitleText)
      ],
    );
  }
}
