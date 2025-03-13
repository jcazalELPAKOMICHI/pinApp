import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/core/injectable/config.dart';
import 'package:pin_app/core/routes/app_route.dart';
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
      ],
      child: MaterialApp(
        title: 'pinApp',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute.onGenerateRoute,
        initialRoute: '/',
      ),
    );
  }
}
