import 'package:pin_app/core/pigeon/post_detail_api.g.dart';

abstract class PostDetailRepository {
  Future<List<PostDetail>> getComments(int postId);
}
