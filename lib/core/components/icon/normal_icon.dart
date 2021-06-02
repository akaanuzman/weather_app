import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class NormalIcon extends StatelessWidget {
  final IconData icon;

  const NormalIcon({Key? key, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: context.dynamicWidth(0.06),
    );
  }
}
