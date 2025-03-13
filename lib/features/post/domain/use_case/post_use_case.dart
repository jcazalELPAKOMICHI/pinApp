import 'package:injectable/injectable.dart';
import 'package:pin_app/features/post/domain/entities/post_entity.dart';
import 'package:pin_app/features/post/domain/repositories/post_repository.dart';

@injectable
class PostUseCase {
  final PostRepository repository;

  PostUseCase({required this.repository});
  Future<List<PostEntity>> getAllPost() async {
    List<PostEntity> lisPostEntity = [];
    final resp = await repository.getAllPost();

    for (var it in resp) {
      lisPostEntity.add(PostEntity(id: it.id, title: it.title, body: it.body));
    }
    return lisPostEntity;
  }
}
