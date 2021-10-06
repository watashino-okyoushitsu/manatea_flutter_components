import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:nested/nested.dart';

/// テキストの拡大・縮小率を指定するためのWidget
/// `1` を基準に最小値[min],最大値[max]を指定することができる
class TextScaleFactor extends SingleChildStatelessWidget {
  const TextScaleFactor({
    Key? key,
    this.min = 1,
    this.max = 1,
    Widget? child,
  }) : super(
          key: key,
          child: child,
        );

  /// 文字の大きさがユーザーのデバイス設定に合わせて小さくなる限界値 e.g.: 0.9
  final double? min;

  /// 文字の大きさがユーザーのデバイス設定に合わせて大きくなる限界値 e.g.: 1.2
  final double? max;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    final mediaQuery = MediaQuery.maybeOf(context);
    if (mediaQuery == null) {
      assert(false, 'TextScaleFactor should be placed inside of MediaQuery');
      return child!;
    }
    final textScaleFactor = mediaQuery.textScaleFactor;
    final adjustedFactor =
        math.min(math.max(min ?? 0, textScaleFactor), max ?? double.infinity);
    return MediaQuery(
      data: mediaQuery.copyWith(textScaleFactor: adjustedFactor),
      child: child!,
    );
  }
}
