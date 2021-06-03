import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import '../../../feature/home/model/home_model.dart';

class HighGlowText extends StatelessWidget {
  final HomeModel model;

  const HighGlowText({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GlowText(
      "${model.currentTemp.current}",
      style: TextStyle(height: 0.1, fontSize: 125, fontWeight: FontWeight.bold),
    );
  }
}
