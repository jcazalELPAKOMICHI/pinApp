part of 'theme_bloc.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({required bool isDarkMode}) = _ThemeState;

  factory ThemeState.initial() {
    return const ThemeState(isDarkMode: false);
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(isDarkMode: map['isDarkMode'] as bool? ?? false);
  }
}
