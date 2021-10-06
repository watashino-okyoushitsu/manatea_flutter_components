import 'package:flutter/material.dart';

import 'text/subtitle1_text.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 50,
      ),
      child: Subtitle1Text(
        text,
      ),
    );
  }
}
