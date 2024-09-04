part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

final class ThemeDark extends ThemeState {
  final bool isdark;
  ThemeDark({required this.isdark});
}

final class ThemeLight extends ThemeState {
  final bool isdark;
  ThemeLight({required this.isdark});
}
