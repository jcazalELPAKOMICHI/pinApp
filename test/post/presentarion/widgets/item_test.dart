import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pin_app/core/injectable/config.dart';
import 'package:pin_app/core/routes/app_route_import.dart';
import 'package:pin_app/core/theme/bloc/theme_bloc.dart';
import 'package:pin_app/features/post/domain/use_case/post_use_case.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';
import 'package:pin_app/features/post/presentation/widgets/item_post.dart';

import 'item_test.mocks.dart';

@GenerateMocks([PostBloc, ThemeBloc, PostUseCase])
void main() {
  late PostBloc postBloc;
  late ThemeBloc themeBloc;
  late PostUseCase postUseCase;

  setUpAll(() {
    configureDependencies();
    postUseCase = MockPostUseCase();
    postBloc = MockPostBloc();
    themeBloc = MockThemeBloc();
  });

  testWidgets('Verificar widget de item', (WidgetTester tester) async {
    final randomListOfPosts = List.generate(10, (_) => generatePostModel());

    when(
      postUseCase.getAllPost(),
    ).thenAnswer((realInvocation) async => randomListOfPosts);

    when(() => postBloc.state).thenReturn(
      () => PostState(
        response: randomListOfPosts,
        searchResult: randomListOfPosts,
        status: PostStatus.success,
        post: randomListOfPosts.first,
      ),
    );

    when(() => themeBloc.state).thenReturn(() => ThemeState(isDarkMode: true));

    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider.value(value: postBloc),
          BlocProvider.value(value: themeBloc),
        ],
        child: PostPage(),
      ),
    );

    var fab = find.byType(ItemPost);
    await tester.pumpAndSettle();

    expect(fab, findsOneWidget);
  });
}

final random = Random();
PostEntity generatePostModel() {
  final id = random.nextInt(100);
  return PostEntity(
    id: id,
    title: "Titulo",
    body: "Cuerpo del item",
    favorite: 1,
    name: "Jose Cazal",
    profilePicture:
        "https://media.istockphoto.com/id/183285756/photo/waiting.jpg?s=612x612&w=0&k=20&c=SD1vv6goaFvQZo9ojhHqJpZ8vpLUVYxud5EBLMgSMlI=",
  );
}
