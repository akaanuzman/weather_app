import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Headline5TextCopy extends StatelessWidget {
  final String data;

  const Headline5TextCopy({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: context.textTheme.headline5,
    );
  }
}