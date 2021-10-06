import 'package:flutter/material.dart';

import '../../theme_data/theme_data.dart';

/// button1スタイルのText
class Button1Text extends StatelessWidget {
  const Button1Text(
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
      style: Theme.of(context).textTheme.button1,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
