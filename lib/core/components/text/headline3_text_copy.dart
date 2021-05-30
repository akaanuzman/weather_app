import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Headline3TextCopy extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;

  const Headline3TextCopy({Key? key, required this.data,this.fontWeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: context.textTheme.headline3!.copyWith(
        fontWeight: fontWeight
      ),
    );
  }
}
