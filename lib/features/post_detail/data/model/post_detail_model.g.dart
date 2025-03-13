// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostDetailModel _$PostDetailModelFromJson(Map<String, dynamic> json) =>
    _PostDetailModel(
      postId: (json['postId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$PostDetailModelToJson(_PostDetailModel instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
