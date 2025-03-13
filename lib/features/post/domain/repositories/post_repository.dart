import 'package:pin_app/features/post/data/model/post_model.dart';

abstract class PostRepository {
  Future<List<PostModel>> getAllPost();
}
