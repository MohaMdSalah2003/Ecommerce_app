import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class themes {
  static ThemeData darktheme = ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: colors.kMainColor,
          backgroundColor: colors.kdarkColor),
      appBarTheme: AppBarTheme(
          backgroundColor: colors.kdarkColor,
          titleTextStyle: Styles.text17SemiBold.copyWith(color: Colors.white),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: colors.kdarkColor,
          )),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: colors.kdarkColor);

  static ThemeData lighttheme = ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: colors.kMainColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: colors.kMainColor,
          backgroundColor: Colors.white),
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: Styles.text17SemiBold.copyWith(color: Colors.black),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark)),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white);
}
