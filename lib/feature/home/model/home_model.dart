import '../../../core/base/base_model.dart';

class HomeModel extends BaseModel {
  final int? max;
  final int? min;
  final int? current;
  final String? name;
  final String? day;
  final int? wind;
  final int? humidity;
  final int? chanceRain;
  final String? image;
  final String? time;
  final String? location;

  HomeModel(
      {this.max,
      this.min,
      this.name,
      this.day,
      this.wind,
      this.humidity,
      this.chanceRain,
      this.image,
      this.current,
      this.time,
      this.location});

  List<HomeModel> get todayWeather => [
        HomeModel(current: 23, image: imageConstants.rainy2d, time: "10:00"),
        HomeModel(current: 21, image: imageConstants.thunder2d, time: "11:00"),
        HomeModel(current: 22, image: imageConstants.rainy2d, time: "12:00"),
        HomeModel(current: 19, image: imageConstants.snow2d, time: "01:00")
      ];

  HomeModel get currentTemp => HomeModel(
      current: 21,
      image: imageConstants.thunder,
      name: "Thunderstorm",
      day: "Monday, 17 May",
      wind: 13,
      humidity: 24,
      chanceRain: 87,
      location: "Minsk");

  HomeModel get tomorrowTemp => HomeModel(
        max: 20,
        min: 17,
        image: imageConstants.sunny,
        name: "Sunny",
        wind: 9,
        humidity: 31,
        chanceRain: 20,
      );

  List<HomeModel> get sevenDay => [
        HomeModel(
            max: 20,
            min: 14,
            image: imageConstants.rainy2d,
            day: "Mon",
            name: "Rainy"),
        HomeModel(
            max: 22,
            min: 16,
            image: imageConstants.thunder2d,
            day: "Tue",
            name: "Thunder"),
        HomeModel(
            max: 19,
            min: 13,
            image: imageConstants.rainy2d,
            day: "Wed",
            name: "Rainy"),
        HomeModel(
            max: 18,
            min: 12,
            image: imageConstants.snow2d,
            day: "Thu",
            name: "Snow"),
        HomeModel(
            max: 23,
            min: 19,
            image: imageConstants.sunny2d,
            day: "Fri",
            name: "Sunny"),
        HomeModel(
            max: 25,
            min: 17,
            image: imageConstants.rainy2d,
            day: "Sat",
            name: "Rainy"),
        HomeModel(
            max: 21,
            min: 18,
            image: imageConstants.thunder2d,
            day: "Sun",
            name: "Thunder")
      ];
}
