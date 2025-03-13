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
      emit(state.copyWith(status: PostStatus.loading));

      final response = await useCase.getAllPost();

      emit(
        state.copyWith(
          status: PostStatus.success,
          response: response,
          searchResult: response,
        ),
      );
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
  }
}
