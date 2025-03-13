// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostDetailState {

 PostDetailStatus get status; List<PostDetailModel> get response;
/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDetailStateCopyWith<PostDetailState> get copyWith => _$PostDetailStateCopyWithImpl<PostDetailState>(this as PostDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.response, response));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(response));

@override
String toString() {
  return 'PostDetailState(status: $status, response: $response)';
}


}

/// @nodoc
abstract mixin class $PostDetailStateCopyWith<$Res>  {
  factory $PostDetailStateCopyWith(PostDetailState value, $Res Function(PostDetailState) _then) = _$PostDetailStateCopyWithImpl;
@useResult
$Res call({
 PostDetailStatus status, List<PostDetailModel> response
});




}
/// @nodoc
class _$PostDetailStateCopyWithImpl<$Res>
    implements $PostDetailStateCopyWith<$Res> {
  _$PostDetailStateCopyWithImpl(this._self, this._then);

  final PostDetailState _self;
  final $Res Function(PostDetailState) _then;

/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? response = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostDetailStatus,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as List<PostDetailModel>,
  ));
}

}


/// @nodoc


class _PostDetailState implements PostDetailState {
  const _PostDetailState({required this.status, required final  List<PostDetailModel> response}): _response = response;
  

@override final  PostDetailStatus status;
 final  List<PostDetailModel> _response;
@override List<PostDetailModel> get response {
  if (_response is EqualUnmodifiableListView) return _response;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_response);
}


/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostDetailStateCopyWith<_PostDetailState> get copyWith => __$PostDetailStateCopyWithImpl<_PostDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostDetailState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._response, _response));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_response));

@override
String toString() {
  return 'PostDetailState(status: $status, response: $response)';
}


}

/// @nodoc
abstract mixin class _$PostDetailStateCopyWith<$Res> implements $PostDetailStateCopyWith<$Res> {
  factory _$PostDetailStateCopyWith(_PostDetailState value, $Res Function(_PostDetailState) _then) = __$PostDetailStateCopyWithImpl;
@override @useResult
$Res call({
 PostDetailStatus status, List<PostDetailModel> response
});




}
/// @nodoc
class __$PostDetailStateCopyWithImpl<$Res>
    implements _$PostDetailStateCopyWith<$Res> {
  __$PostDetailStateCopyWithImpl(this._self, this._then);

  final _PostDetailState _self;
  final $Res Function(_PostDetailState) _then;

/// Create a copy of PostDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? response = null,}) {
  return _then(_PostDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostDetailStatus,response: null == response ? _self._response : response // ignore: cast_nullable_to_non_nullable
as List<PostDetailModel>,
  ));
}


}

/// @nodoc
mixin _$PostDetailEvent {

 int get id;
/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDetailEventCopyWith<PostDetailEvent> get copyWith => _$PostDetailEventCopyWithImpl<PostDetailEvent>(this as PostDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostDetailEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $PostDetailEventCopyWith<$Res>  {
  factory $PostDetailEventCopyWith(PostDetailEvent value, $Res Function(PostDetailEvent) _then) = _$PostDetailEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$PostDetailEventCopyWithImpl<$Res>
    implements $PostDetailEventCopyWith<$Res> {
  _$PostDetailEventCopyWithImpl(this._self, this._then);

  final PostDetailEvent _self;
  final $Res Function(PostDetailEvent) _then;

/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _GetComments implements PostDetailEvent {
  const _GetComments(this.id);
  

@override final  int id;

/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCommentsCopyWith<_GetComments> get copyWith => __$GetCommentsCopyWithImpl<_GetComments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetComments&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostDetailEvent.getComments(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetCommentsCopyWith<$Res> implements $PostDetailEventCopyWith<$Res> {
  factory _$GetCommentsCopyWith(_GetComments value, $Res Function(_GetComments) _then) = __$GetCommentsCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$GetCommentsCopyWithImpl<$Res>
    implements _$GetCommentsCopyWith<$Res> {
  __$GetCommentsCopyWithImpl(this._self, this._then);

  final _GetComments _self;
  final $Res Function(_GetComments) _then;

/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetComments(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
