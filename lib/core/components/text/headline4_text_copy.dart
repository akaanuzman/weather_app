import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Headline4TextCopy extends StatelessWidget {
  final String data;

  const Headline4TextCopy({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: context.textTheme.headline4,
    );
  }
}
