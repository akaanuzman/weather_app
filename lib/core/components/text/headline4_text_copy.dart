import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Headline4TextCopy extends StatelessWidget {
  final String data;
  final Color? color;

  const Headline4TextCopy({Key? key, required this.data, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: context.textTheme.headline4!.copyWith(color: color),
    );
  }
}
