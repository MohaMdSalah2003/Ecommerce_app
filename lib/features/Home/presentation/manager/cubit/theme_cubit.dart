import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool isdark = false;
  void ChangeMode(bool value) async {
    // emit(ThemeInitial());
    isdark = value;
    if (isdark) {
      emit(ThemeDark(isdark: isdark));
      print(isdark);
    } else {
      emit(ThemeLight(isdark: isdark));
      print(isdark);
    }
  }
}
