import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'llib/core/pigeon/post_detail_api.g.dart',
    dartOptions: DartOptions(),
    kotlinOut:
        'android/app/src/main/kotlin/dev/flutter/pigeon_test/PostDetail.g.kt',
    kotlinOptions: KotlinOptions(),
    swiftOut: 'ios/Runner/PostDetail.g.swift',
    javaOut: 'android/app/src/main/java/io/flutter/plugins/PostDetail.java',
    javaOptions: JavaOptions(),
    swiftOptions: SwiftOptions(),
  ),
)
class CommentRequest {
  final String idPost;

  CommentRequest({required this.idPost});
}

class PostDetail {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  PostDetail({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });
}

class CommentResponse {
  final List<PostDetail> results;

  CommentResponse({required this.results});
}

@HostApi()
abstract class PostDetailApi {
  @async
  CommentResponse search(CommentRequest request);
}
