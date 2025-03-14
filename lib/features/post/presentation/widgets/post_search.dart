import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/core/theme/bloc/theme_bloc.dart';
import 'package:pin_app/core/theme/theme.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';

class PostSearch extends StatelessWidget implements PreferredSizeWidget {
  PostSearch({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return AppBarWithSearchSwitch(
          backgroundColor: Color(0xff2F315A),
          foregroundColor: Color(0xffffffff),
          surfaceTintColor: Color(0xffffffff),
          titleTextStyle: TextStyle(color: Color(0xffffffff)),
          toolbarTextStyle: TextStyle(color: Colors.white),
          searchInputDecoration: InputDecoration(
            fillColor: Colors.white,
            hintText: 'Buscar',
            hintStyle: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              decorationThickness: 0,
            ),
          ),
          scrolledUnderElevation: 0,
          onClosed: () {
            if (state.searchResult.isEmpty) {
              _textController.clear();
              _searchText(context);
            }
          },
          customTextEditingController: _textController,
          onChanged: (text) {
            _searchText(context);
          },
          onSubmitted: (text) {
            _searchText(context);
          },
          appBarBuilder: (context) {
            return AppBar(
              backgroundColor: Color(0xff2F315A),
              forceMaterialTransparency: false,
              scrolledUnderElevation: 0,
              leading: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  return ThemeSwitcher.withTheme(
                    builder:
                        (context, switcher, theme) => IconButton(
                          onPressed: () {
                            switcher.changeTheme(
                              theme:
                                  !state.isDarkMode
                                      ? AppThemes.darkMode
                                      : AppThemes.lightMode,
                              onAnimationFinish: () {},
                            );
                            if (state.isDarkMode) {
                              context.read<ThemeBloc>().add(
                                const ThemeEvent.switchLightMode(),
                              );
                            } else {
                              context.read<ThemeBloc>().add(
                                const ThemeEvent.switchDarkMode(),
                              );
                            }
                          },
                          icon: Icon(
                            !state.isDarkMode
                                ? Icons.dark_mode
                                : Icons.light_mode,
                          ),
                        ),
                  );
                },
              ),
              foregroundColor: Color(0xffffffff),
              title: Text('Publicaciones'),
              centerTitle: true,
              actions: const [AppBarSearchButton()],
            );
          },
        );
      },
    );
  }

  void _searchText(BuildContext context) {
    context.read<PostBloc>().add(PostEvent.searchList(_textController.text));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
