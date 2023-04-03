import 'package:flutter/material.dart';
import 'package:pharmine_app/theme/colors.dart';
import 'package:pharmine_app/theme/text_theme.dart';

class MyTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: cloudWhite,
      textTheme: customTextTheme,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: pastelYellow,
      ).copyWith(
        background: cloudWhite,
        secondary: pastelBlue,
      ),
      appBarTheme: AppBarTheme(
        color: cloudWhite,
        elevation: 4.0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: darkGrey,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
