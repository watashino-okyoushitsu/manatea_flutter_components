import 'package:flutter/material.dart';

import 'manatea_color.dart';

/// manateaの基本テーマデータ
/// 各PagesWidgetやCommonWidgetで配色に関する記述は最低限に抑えるようにする。
final ThemeData manateaThemeData = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light().copyWith(
    primary: ManateaColor.primary,
    background: ManateaColor.background200,
    surface: ManateaColor.background100,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: ManateaColor.primary,
      minimumSize: const Size.fromHeight(44),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      primary: ManateaColor.basic100,
      minimumSize: const Size.fromHeight(44),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: ManateaColor.background200,
    enabledBorder: InputBorder.none,
    border: InputBorder.none,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ManateaColor.background200,
      ),
    ),
  ),
  textTheme: _manateaTextTheme,
  appBarTheme: AppBarTheme(
    elevation: 1,
    color: ManateaColor.background100,
    actionsIconTheme: const IconThemeData(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: _manateaTextTheme.headline3,
    centerTitle: true,
  ),
  scaffoldBackgroundColor: ManateaColor.background200,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: ManateaColor.background200,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(
      color: ManateaColor.secondary,
      opacity: 1,
      size: 24,
    ),
    selectedItemColor: ManateaColor.secondary,
    selectedLabelStyle: TextStyle(
      color: ManateaColor.secondary,
      fontSize: 12,
    ),
    unselectedIconTheme: IconThemeData(
      color: ManateaColor.basic300,
      opacity: 1,
      size: 24,
    ),
    unselectedLabelStyle: TextStyle(
      color: ManateaColor.background200,
      fontSize: 12,
    ),
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
  ),
);

const _manateaTextTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w600,
    fontSize: 22,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headline2: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headline3: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headline4: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headline5: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic200,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  headline6: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic200,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    height: 1.7,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  subtitle1: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyText1: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w300,
    fontSize: 14,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  bodyText2: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    height: 1.7,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  button: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
  ),
  caption: TextStyle(
    fontFamily: 'Hiragino Sans',
    color: ManateaColor.basic100,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
  ),
);

extension TextThemeExtension on TextTheme {
  TextStyle? get headline7 => const TextStyle(
        fontFamily: 'Hiragino Sans',
        color: ManateaColor.basic100,
        fontWeight: FontWeight.w600,
        fontSize: 26,
        height: 1.3,
      );

  TextStyle? get button1 => _manateaTextTheme.button?.copyWith(
        color: ManateaColor.primary,
      );

  TextStyle? get button2 => _manateaTextTheme.button?.copyWith(
        color: ManateaColor.basic700,
      );

  TextStyle? get button3 => _manateaTextTheme.button?.copyWith(
        color: ManateaColor.secondary,
      );

  TextStyle? get button4 => _manateaTextTheme.button?.copyWith(
        color: ManateaColor.basic100,
      );

  TextStyle? get button5 => _manateaTextTheme.button?.copyWith(
        color: ManateaColor.basic200,
      );

  TextStyle? get button6 => _manateaTextTheme.button?.copyWith(
        color: ManateaColor.basic700,
      );
}

/// UIに関する定数を管理するクラス
class StyleConstant {
  static const double padding = 16;
}
