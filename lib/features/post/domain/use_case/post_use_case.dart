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
      lisPostEntity.add(
        PostEntity(id: it.id, title: it.title, body: it.body, favorite: 0),
      );
    }
    lisPostEntity.sort((a, b) => a.id.compareTo(b.id));

    return lisPostEntity;
  }

  List<PostEntity> updateLike(List<PostEntity> searchResult, int id) {
    final nuevaLista = List<PostEntity>.from(searchResult);

    final firstPost = nuevaLista.firstWhere((element) => element.id == id);
    final count = firstPost.favorite! + 1;

    final post = firstPost.copyWith(favorite: count);

    nuevaLista.removeWhere((element) => element.id == post.id);
    nuevaLista.add(post);

    nuevaLista.sort((a, b) => a.id.compareTo(b.id));
    return nuevaLista;
  }

  List<PostEntity> get mockLoader => List.filled(
    10,
    PostEntity(id: 1, title: "Tiulo de prueba", body: "comentario de prueba"),
  );
}
