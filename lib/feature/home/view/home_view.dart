import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/base/base_stateless.dart';
import '../../../core/components/container/current_weather_glow_container.dart';
import '../../../core/components/padding/padding_bottom_weather.dart';

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
            child: PaddingBottomWeather(),
          )
        ],
      ),
    );
  }
}
