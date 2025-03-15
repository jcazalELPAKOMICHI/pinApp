import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:pin_app/features/post/domain/entities/post_entity.dart';
import 'package:pin_app/features/post/domain/repositories/post_repository.dart';

@injectable
class PostUseCase {
  final PostRepository repository;

  final _listProfile = [
    'https://media.istockphoto.com/id/183285756/photo/waiting.jpg?s=612x612&w=0&k=20&c=SD1vv6goaFvQZo9ojhHqJpZ8vpLUVYxud5EBLMgSMlI=',
    'https://writestylesonline.com/wp-content/uploads/2018/11/Three-Statistics-That-Will-Make-You-Rethink-Your-Professional-Profile-Picture.jpg',
    'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ=',
    'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
    'https://t3.ftcdn.net/jpg/03/70/29/26/360_F_370292674_QS5nA0bJgyRD6VzYycTQdSWhhSHQJbQZ.jpg',
    'https://cdn.pixabay.com/photo/2022/09/08/15/16/cute-7441224_1280.jpg',
  ];

  final _listName = ['Caroline', 'Jhon', 'Steffany', 'Smith', 'Michael'];

  PostUseCase({required this.repository});
  Future<List<PostEntity>> getAllPost() async {
    List<PostEntity> lisPostEntity = [];
    final resp = await repository.getAllPost();

    for (var it in resp) {
      lisPostEntity.add(
        PostEntity(
          id: it.id,
          title: it.title,
          body: it.body,
          favorite: 0,
          profilePicture: _randomValue(_listProfile),
          name: '@${_randomValue(_listName)}',
        ),
      );
    }
    lisPostEntity.sort((a, b) => a.id.compareTo(b.id));

    return lisPostEntity;
  }

  List<PostEntity> updateLike(List<PostEntity> searchResult, int id) {
    final nuevaLista = List<PostEntity>.from(searchResult);
    final firstPost = nuevaLista.firstWhere((element) => element.id == id);
    final count = firstPost.favorite! + 1;

    int index = nuevaLista.indexWhere((p) => p.id == id);
    if (index != -1) {
      nuevaLista[index] = firstPost.copyWith(favorite: count);
    }

    nuevaLista.sort((a, b) => a.id.compareTo(b.id));
    return nuevaLista;
  }

  List<PostEntity> get mockLoader => List.filled(
    10,
    PostEntity(
      id: 1,
      title: "Tiulo de prueba",
      body: "comentario de prueba",
      profilePicture:
          'https://cdn.pixabay.com/photo/2022/09/08/15/16/cute-7441224_1280.jpg',
      name: 'xxxxxxx',
    ),
  );

  String _randomValue(List<String> lista) {
    final random = Random();
    return lista[random.nextInt(lista.length)];
  }
}
