// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostState {

 PostStatus get status; List<PostEntity> get response; List<PostEntity> get searchResult; PostEntity? get post;
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostStateCopyWith<PostState> get copyWith => _$PostStateCopyWithImpl<PostState>(this as PostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.response, response)&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(response),const DeepCollectionEquality().hash(searchResult),post);

@override
String toString() {
  return 'PostState(status: $status, response: $response, searchResult: $searchResult, post: $post)';
}


}

/// @nodoc
abstract mixin class $PostStateCopyWith<$Res>  {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) _then) = _$PostStateCopyWithImpl;
@useResult
$Res call({
 PostStatus status, List<PostEntity> response, List<PostEntity> searchResult, PostEntity? post
});


$PostEntityCopyWith<$Res>? get post;

}
/// @nodoc
class _$PostStateCopyWithImpl<$Res>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._self, this._then);

  final PostState _self;
  final $Res Function(PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? response = null,Object? searchResult = null,Object? post = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,post: freezed == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity?,
  ));
}
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res>? get post {
    if (_self.post == null) {
    return null;
  }

  return $PostEntityCopyWith<$Res>(_self.post!, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}


/// @nodoc


class _PostState implements PostState {
  const _PostState({required this.status, required final  List<PostEntity> response, required final  List<PostEntity> searchResult, this.post}): _response = response,_searchResult = searchResult;
  

@override final  PostStatus status;
 final  List<PostEntity> _response;
@override List<PostEntity> get response {
  if (_response is EqualUnmodifiableListView) return _response;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_response);
}

 final  List<PostEntity> _searchResult;
@override List<PostEntity> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}

@override final  PostEntity? post;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostStateCopyWith<_PostState> get copyWith => __$PostStateCopyWithImpl<_PostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._response, _response)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult)&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_response),const DeepCollectionEquality().hash(_searchResult),post);

@override
String toString() {
  return 'PostState(status: $status, response: $response, searchResult: $searchResult, post: $post)';
}


}

/// @nodoc
abstract mixin class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(_PostState value, $Res Function(_PostState) _then) = __$PostStateCopyWithImpl;
@override @useResult
$Res call({
 PostStatus status, List<PostEntity> response, List<PostEntity> searchResult, PostEntity? post
});


@override $PostEntityCopyWith<$Res>? get post;

}
/// @nodoc
class __$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(this._self, this._then);

  final _PostState _self;
  final $Res Function(_PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? response = null,Object? searchResult = null,Object? post = freezed,}) {
  return _then(_PostState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,response: null == response ? _self._response : response // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,post: freezed == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity?,
  ));
}

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res>? get post {
    if (_self.post == null) {
    return null;
  }

  return $PostEntityCopyWith<$Res>(_self.post!, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc
mixin _$PostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent()';
}


}

/// @nodoc
class $PostEventCopyWith<$Res>  {
$PostEventCopyWith(PostEvent _, $Res Function(PostEvent) __);
}


/// @nodoc


class _GetAllPost implements PostEvent {
   _GetAllPost();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllPost);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent.getAllPost()';
}


}




/// @nodoc


class _SearchList implements PostEvent {
   _SearchList(this.text);
  

 final  String text;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchListCopyWith<_SearchList> get copyWith => __$SearchListCopyWithImpl<_SearchList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchList&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'PostEvent.searchList(text: $text)';
}


}

/// @nodoc
abstract mixin class _$SearchListCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$SearchListCopyWith(_SearchList value, $Res Function(_SearchList) _then) = __$SearchListCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class __$SearchListCopyWithImpl<$Res>
    implements _$SearchListCopyWith<$Res> {
  __$SearchListCopyWithImpl(this._self, this._then);

  final _SearchList _self;
  final $Res Function(_SearchList) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_SearchList(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateFavorite implements PostEvent {
   _UpdateFavorite(this.idPost);
  

 final  int idPost;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFavoriteCopyWith<_UpdateFavorite> get copyWith => __$UpdateFavoriteCopyWithImpl<_UpdateFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFavorite&&(identical(other.idPost, idPost) || other.idPost == idPost));
}


@override
int get hashCode => Object.hash(runtimeType,idPost);

@override
String toString() {
  return 'PostEvent.updateFavorite(idPost: $idPost)';
}


}

/// @nodoc
abstract mixin class _$UpdateFavoriteCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$UpdateFavoriteCopyWith(_UpdateFavorite value, $Res Function(_UpdateFavorite) _then) = __$UpdateFavoriteCopyWithImpl;
@useResult
$Res call({
 int idPost
});




}
/// @nodoc
class __$UpdateFavoriteCopyWithImpl<$Res>
    implements _$UpdateFavoriteCopyWith<$Res> {
  __$UpdateFavoriteCopyWithImpl(this._self, this._then);

  final _UpdateFavorite _self;
  final $Res Function(_UpdateFavorite) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idPost = null,}) {
  return _then(_UpdateFavorite(
null == idPost ? _self.idPost : idPost // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SelectPost implements PostEvent {
   _SelectPost(this.post);
  

 final  PostEntity post;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectPostCopyWith<_SelectPost> get copyWith => __$SelectPostCopyWithImpl<_SelectPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectPost&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostEvent.selectPost(post: $post)';
}


}

/// @nodoc
abstract mixin class _$SelectPostCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$SelectPostCopyWith(_SelectPost value, $Res Function(_SelectPost) _then) = __$SelectPostCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});


$PostEntityCopyWith<$Res> get post;

}
/// @nodoc
class __$SelectPostCopyWithImpl<$Res>
    implements _$SelectPostCopyWith<$Res> {
  __$SelectPostCopyWithImpl(this._self, this._then);

  final _SelectPost _self;
  final $Res Function(_SelectPost) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_SelectPost(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res> get post {
  
  return $PostEntityCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

// dart format on
