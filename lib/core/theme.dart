//Colors
import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    fontFamily: 'Gilroy',
    colorScheme: const ColorScheme.dark(
      primary: kMainBlack,
      onPrimary: kMainBlack,
      secondary: kMainBlack,
      onSecondary: kMainBlack,
    ),
  );
  static const kred = Colors.red;
}
