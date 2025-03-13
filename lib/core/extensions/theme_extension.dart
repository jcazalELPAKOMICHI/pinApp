import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/core/theme/bloc/theme_bloc.dart';

extension ThemeContext on BuildContext {
  bool get isDarkModeR => read<ThemeBloc>().state.isDarkMode;
  bool get isDarkModeW => watch<ThemeBloc>().state.isDarkMode;

  ThemeData get theme => Theme.of(this);

  TextStyle get textTheme =>
      theme.textTheme.titleMedium!.copyWith(color: Colors.red);
}
