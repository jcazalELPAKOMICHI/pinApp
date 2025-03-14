part of 'theme_bloc.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.switchDarkMode(bool isDarkMode) = _SwitchDarkMode;
}
