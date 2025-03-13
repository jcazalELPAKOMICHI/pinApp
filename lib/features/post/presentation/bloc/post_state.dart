part of 'post_bloc.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    required PostStatus status,
    required List<PostEntity> response,
    required List<PostEntity> searchResult,
    PostEntity? post,
  }) = _PostState;
  factory PostState.initial() => PostState(
    status: PostStatus.initial,
    response: [],
    searchResult: [],
    post: null,
  );
}

enum PostStatus { initial, loading, success, error }
