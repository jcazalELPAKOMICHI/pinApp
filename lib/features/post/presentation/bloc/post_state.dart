part of 'post_bloc.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    required PostStatus status,
    required List<PostEntity> response,
    required List<PostEntity> searchResult,
  }) = _PostState;
  factory PostState.initial() =>
      PostState(status: PostStatus.initial, response: [], searchResult: []);
}

enum PostStatus { initial, loading, success, error }
