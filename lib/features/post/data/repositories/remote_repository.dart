import 'package:injectable/injectable.dart';
import 'package:pin_app/core/http/pin_app_client.dart';
import 'package:pin_app/features/post/data/model/post_model.dart';
import 'package:pin_app/features/post/domain/repositories/post_repository.dart';

@Injectable(as: PostRepository)
class RemoteRepository implements PostRepository {
  final PinAppClient client;
  RemoteRepository({required this.client});
  @override
  Future<List<PostModel>> getAllPost() {
    return client.getPost();
  }
}
