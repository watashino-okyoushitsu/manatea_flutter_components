import 'package:flutter/material.dart';

/// captionスタイルのText
class CaptionText extends StatelessWidget {
  const CaptionText(
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
      style: Theme.of(context).textTheme.caption,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
