import 'package:dark_theme_riverpod/constants/text_styles.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  //creating an instance of the class
  AppThemeData._();

  static get lightThemeData {
    Color color = Colors.black;
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.teal,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      // s
      textTheme: TextTheme(
        bodyText2: body2Style.copyWith(color: color),
        bodyText1: bodyStyle.copyWith(color: color),
        caption: captionStyle.copyWith(color: color),
        button: buttonStyle.copyWith(color: color),
        headline1: heading1Style.copyWith(color: color),
        headline2: heading2Style.copyWith(color: color),
        headline3: heading3Style.copyWith(color: color),
        headline4: heading4Style.copyWith(color: color),
        headline5: heading5Style.copyWith(color: color),
        headline6: heading6Style.copyWith(color: color),
        overline: body3Style.copyWith(color: color),
        // subtitle1: ,
        // subtitle2: ,
      ),
    );
  }

  static get darkThemeData {
    Color color = Colors.white;

    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        bodyText2: body2Style.copyWith(color: color),
        bodyText1: bodyStyle.copyWith(color: color),
        caption: captionStyle.copyWith(color: color),
        button: buttonStyle.copyWith(color: color),
        headline1: heading1Style.copyWith(color: color),
        headline2: heading2Style.copyWith(color: color),
        headline3: heading3Style.copyWith(color: color),
        headline4: heading4Style.copyWith(color: color),
        headline5: heading5Style.copyWith(color: color),
        headline6: heading6Style.copyWith(color: color),
        overline: body3Style.copyWith(color: color),
      ),
    );
  }
}
