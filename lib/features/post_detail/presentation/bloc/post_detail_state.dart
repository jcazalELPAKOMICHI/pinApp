part of 'post_detail_bloc.dart';

@freezed
abstract class PostDetailState with _$PostDetailState {
  const factory PostDetailState({
    required PostDetailStatus status,
    required List<PostDetailModel> response,
  }) = _PostDetailState;

  factory PostDetailState.initial() =>
      PostDetailState(response: [], status: PostDetailStatus.initial);
}

enum PostDetailStatus { initial, loading, success, error }
