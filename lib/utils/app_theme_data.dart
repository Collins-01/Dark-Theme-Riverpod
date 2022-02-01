import 'package:flutter/material.dart';

class AppThemeData {
  //creating an instance of the class
  AppThemeData._();

  static get lightThemeData => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),
      );

  static get darkThemeData => ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      );
}
