import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_model.freezed.dart';
part 'post_detail_model.g.dart';

@freezed
abstract class PostDetailModel with _$PostDetailModel {
  const factory PostDetailModel({
    required int postId,
    required int id,
    required String name,
    required String email,
    required String body,
  }) = _PostDetailModel;

  factory PostDetailModel.fromJson(Map<String, Object?> json) =>
      _$PostDetailModelFromJson(json);
}
