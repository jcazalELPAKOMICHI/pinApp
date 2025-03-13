import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/core/pigeon/post_detail_api.g.dart',
    dartOptions: DartOptions(),

    swiftOut: 'ios/Runner/PostDetailApi.g.swift',
    javaOut: 'android/app/src/main/java/io/flutter/plugins/PostDetailApi.java',

    javaOptions: JavaOptions(),
    swiftOptions: SwiftOptions(),
    dartPackageName: 'pin_app',
    objcOptions: ObjcOptions(prefix: 'PGN'),
  ),
)
class PostDetail {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  PostDetail(this.postId, this.id, this.name, this.email, this.body);
}

@HostApi()
abstract class DetailApi {
  @async
  List<PostDetail> search(String baseUrl, String endpoint, int postId);
}
