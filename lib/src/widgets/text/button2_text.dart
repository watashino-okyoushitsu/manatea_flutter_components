import 'package:flutter/material.dart';
import '../../../manatea_flutter_components.dart';

/// button2スタイルのText
class Button2Text extends StatelessWidget {
  const Button2Text(
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
      style: Theme.of(context).textTheme.button2,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
