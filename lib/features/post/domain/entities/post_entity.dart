import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';

@freezed
abstract class PostEntity with _$PostEntity {
  const factory PostEntity({
    required int id,
    required String title,
    required String body,
    @Default(0) int? favorite,
  }) = _PostEntity;
}
