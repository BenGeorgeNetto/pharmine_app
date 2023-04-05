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
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: darkGrey,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        actionsIconTheme: IconThemeData(
          color: darkGrey,
        ),
      ),
      cardTheme: CardTheme(
        color: pastelYellow,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        // margin: EdgeInsets.zero,
      ),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          for (var type in TargetPlatform.values)
            type: CustomPageTransitionBuilder(),
        }
      )
    );
  }
}

class CustomPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
      Route<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
