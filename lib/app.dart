import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/core/extensions/theme_extension.dart';
import 'package:pin_app/core/injectable/config.dart';
import 'package:pin_app/core/routes/app_route.dart';
import 'package:pin_app/core/theme/bloc/theme_bloc.dart';
import 'package:pin_app/core/theme/theme.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';
import 'package:pin_app/features/post_detail/presentation/bloc/post_detail_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<PostBloc>()),
        BlocProvider(create: (context) => getIt.get<PostDetailBloc>()),
        BlocProvider(create: (context) => getIt.get<ThemeBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return ThemeProvider(
            initTheme:
                state.isDarkMode ? AppThemes.darkMode : AppThemes.lightMode,
            duration: Duration(milliseconds: 200),
            child: MaterialApp(
              title: 'pinApp',
              debugShowCheckedModeBanner: false,
              theme:
                  state.isDarkMode ? AppThemes.darkMode : AppThemes.lightMode,
              themeMode: context.isDarkModeW ? ThemeMode.dark : ThemeMode.light,
              darkTheme: AppThemes.darkMode,
              onGenerateRoute: AppRoute.onGenerateRoute,
              initialRoute: '/',
            ),
          );
        },
      ),
    );
  }
}
