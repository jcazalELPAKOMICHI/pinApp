import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pin_app/features/post/domain/entities/post_entity.dart';
import 'package:pin_app/features/post/domain/use_case/post_use_case.dart';

part 'post_state.dart';
part 'post_event.dart';
part 'post_bloc.freezed.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final PostUseCase useCase;
  PostBloc({required this.useCase}) : super(PostState.initial()) {
    on<_GetAllPost>((event, emit) async {
      emit(
        state.copyWith(
          status: PostStatus.loading,
          response: useCase.mockLoader,
          searchResult: useCase.mockLoader,
        ),
      );
      await Future.delayed(Duration(milliseconds: 500));
      await useCase
          .getAllPost()
          .then((it) {
            emit(
              state.copyWith(
                status: PostStatus.success,
                response: it,
                searchResult: it,
              ),
            );
          })
          .catchError((error) {
            print(error.toString());
          });
    });
    on<_SearchList>((event, emit) async {
      final searchResult =
          state.response
              .where(
                (element) =>
                    element.title.toLowerCase().contains(
                      event.text.toLowerCase(),
                    ) ||
                    element.body.toLowerCase().contains(
                      event.text.toLowerCase(),
                    ),
              )
              .toList();

      emit(state.copyWith(searchResult: searchResult));
    });
    on<_UpdateFavorite>((event, emit) {
      final list = useCase.updateLike(state.response, event.idPost);
      final post = list.firstWhere((element) => element.id == event.idPost);
      emit(state.copyWith(response: list, searchResult: list, post: post));
    });
    on<_SelectPost>((event, emit) {
      emit(state.copyWith(post: event.post));
    });
  }
}
