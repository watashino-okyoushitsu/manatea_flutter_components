import 'package:flutter/material.dart';

import '../../theme_data/theme_data.dart';

/// button3スタイルのText
class Button3Text extends StatelessWidget {
  const Button3Text(
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
      style: Theme.of(context).textTheme.button3,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
