import 'package:flutter/material.dart';

/// subtitle1スタイルのText
class Subtitle1Text extends StatelessWidget {
  const Subtitle1Text(
    this.data, {
    Key? key,
    this.textAlign,
    this.overflow,
    this.maxLines,
  }) : super(key: key);

  final String data;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
