part of 'post_detail_bloc.dart';

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState.initial() = _Initial;
  const factory PostDetailState.loadInProgress() = _LoadInProgress;
}