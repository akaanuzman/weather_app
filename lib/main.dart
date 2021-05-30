import 'package:flutter/material.dart';
import 'package:weather_app/core/init/theme/app_theme.dart';
import 'package:weather_app/feature/home/view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      theme: AppTheme.instance.theme,
    );
  }
}
