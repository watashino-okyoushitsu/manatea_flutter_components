import 'package:flutter/material.dart';

import '../../theme_data/theme_data.dart';

/// button5スタイルのText
class Button5Text extends StatelessWidget {
  const Button5Text(
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
      style: Theme.of(context).textTheme.button5,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
