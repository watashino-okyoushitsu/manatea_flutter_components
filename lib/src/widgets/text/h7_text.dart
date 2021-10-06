import 'package:flutter/material.dart';

import '../../theme_data/theme_data.dart';

/// Headline7スタイルのText
class H7Text extends StatelessWidget {
  const H7Text(
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
      style: Theme.of(context).textTheme.headline7,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
