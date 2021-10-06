import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manatea_flutter_components/manatea_flutter_components.dart';

void main() {
  test('明るいテーマなのでBrightnessがLightであること', () {
    final themeData = manateaThemeData;
    expect(themeData.brightness, Brightness.light);
  });
}
