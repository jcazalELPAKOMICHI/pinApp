part of 'post_detail_bloc.dart';

@freezed
abstract class PostDetailEvent with _$PostDetailEvent {
  const factory PostDetailEvent.getComments(int id) = _GetComments;
}
