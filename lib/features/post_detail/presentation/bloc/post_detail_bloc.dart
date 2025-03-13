import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pin_app/features/post_detail/data/model/post_detail_model.dart';
import 'package:pin_app/features/post_detail/domain/use_case/post_detail_use_case.dart';

part 'post_detail_state.dart';
part 'post_detail_event.dart';
part 'post_detail_bloc.freezed.dart';

@injectable
class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  final PostDetailUseCase useCase;
  PostDetailBloc({required this.useCase}) : super(PostDetailState.initial()) {
    on<_GetComments>((event, emit) async {
      emit(
        state.copyWith(
          status: PostDetailStatus.loading,
          response: useCase.loadingMock,
        ),
      );
      await Future.delayed(Duration(milliseconds: 500));
      final reponse = await useCase.getComments(event.id);

      emit(state.copyWith(status: PostDetailStatus.success, response: reponse));
    });
  }
}
