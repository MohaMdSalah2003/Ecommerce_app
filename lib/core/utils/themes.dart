import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class themes {
  static ThemeData darktheme = ThemeData(
      appBarTheme: AppBarTheme(
          titleTextStyle: Styles.text17SemiBold.copyWith(color: Colors.white),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Color(0xFF1B262C),
              statusBarIconBrightness: Brightness.light)),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF1B262C));
  static ThemeData lighttheme = ThemeData(
      appBarTheme: AppBarTheme(
          titleTextStyle: Styles.text17SemiBold.copyWith(color: Colors.black),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark)),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white);
}
