import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pin_app/core/pigeon/post_detail_api.g.dart';
import 'package:pin_app/features/post_detail/domain/repository/post_detail_repository.dart';

@Injectable(as: PostDetailRepository)
class PostDetailRepositoryIml implements PostDetailRepository {
  final Dio dio;

  PostDetailRepositoryIml({required this.dio});
  @override
  Future<List<PostDetail>> getComments(int postId) async {
    return DetailApi().search(dio.options.baseUrl, "comments", postId);
  }
}
