import 'package:flutter/material.dart';

/// Headline5スタイルのText
class H5Text extends StatelessWidget {
  const H5Text(
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
      style: Theme.of(context).textTheme.headline5,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
