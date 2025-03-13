// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostDetailModel {

 int get postId; int get id; String get name; String get email; String get body;
/// Create a copy of PostDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDetailModelCopyWith<PostDetailModel> get copyWith => _$PostDetailModelCopyWithImpl<PostDetailModel>(this as PostDetailModel, _$identity);

  /// Serializes this PostDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailModel&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,id,name,email,body);

@override
String toString() {
  return 'PostDetailModel(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
}


}

/// @nodoc
abstract mixin class $PostDetailModelCopyWith<$Res>  {
  factory $PostDetailModelCopyWith(PostDetailModel value, $Res Function(PostDetailModel) _then) = _$PostDetailModelCopyWithImpl;
@useResult
$Res call({
 int postId, int id, String name, String email, String body
});




}
/// @nodoc
class _$PostDetailModelCopyWithImpl<$Res>
    implements $PostDetailModelCopyWith<$Res> {
  _$PostDetailModelCopyWithImpl(this._self, this._then);

  final PostDetailModel _self;
  final $Res Function(PostDetailModel) _then;

/// Create a copy of PostDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? id = null,Object? name = null,Object? email = null,Object? body = null,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PostDetailModel implements PostDetailModel {
  const _PostDetailModel({required this.postId, required this.id, required this.name, required this.email, required this.body});
  factory _PostDetailModel.fromJson(Map<String, dynamic> json) => _$PostDetailModelFromJson(json);

@override final  int postId;
@override final  int id;
@override final  String name;
@override final  String email;
@override final  String body;

/// Create a copy of PostDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostDetailModelCopyWith<_PostDetailModel> get copyWith => __$PostDetailModelCopyWithImpl<_PostDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostDetailModel&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,id,name,email,body);

@override
String toString() {
  return 'PostDetailModel(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
}


}

/// @nodoc
abstract mixin class _$PostDetailModelCopyWith<$Res> implements $PostDetailModelCopyWith<$Res> {
  factory _$PostDetailModelCopyWith(_PostDetailModel value, $Res Function(_PostDetailModel) _then) = __$PostDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int postId, int id, String name, String email, String body
});




}
/// @nodoc
class __$PostDetailModelCopyWithImpl<$Res>
    implements _$PostDetailModelCopyWith<$Res> {
  __$PostDetailModelCopyWithImpl(this._self, this._then);

  final _PostDetailModel _self;
  final $Res Function(_PostDetailModel) _then;

/// Create a copy of PostDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? id = null,Object? name = null,Object? email = null,Object? body = null,}) {
  return _then(_PostDetailModel(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
