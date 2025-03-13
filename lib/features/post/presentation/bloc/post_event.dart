part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  factory PostEvent.getAllPost() = _GetAllPost;
  factory PostEvent.searchList(String text) = _SearchList;
  factory PostEvent.updateFavorite(int idPost) = _UpdateFavorite;
  factory PostEvent.selectPost(PostEntity post) = _SelectPost;
}
