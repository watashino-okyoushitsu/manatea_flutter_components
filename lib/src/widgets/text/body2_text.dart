import 'package:flutter/material.dart';

/// bodyText2スタイルのText
class Body2Text extends StatelessWidget {
  const Body2Text(
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
      style: Theme.of(context).textTheme.bodyText2,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
