import 'package:flutter/material.dart';

import '../../../feature/home/model/home_model.dart';
import 'weather_view_container.dart';

class WeatherContainer extends StatelessWidget {
  final HomeModel homeModel;

  const WeatherContainer({Key? key, required this.homeModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          homeModel.todayWeather.length,
          (index) => WeatherView(
            homeModel: homeModel.todayWeather[index],
          ),
        ),
      ),
    );
  }
}
