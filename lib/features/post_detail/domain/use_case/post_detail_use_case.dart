import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:pin_app/features/post_detail/data/model/post_detail_model.dart';
import 'package:pin_app/features/post_detail/domain/repository/post_detail_repository.dart';

@injectable
class PostDetailUseCase {
  final PostDetailRepository repository;

  PostDetailUseCase({required this.repository});
  Future<List<PostDetailModel>> getComments(int postId) async {
    final response = await repository.getComments(postId);
    List<PostDetailModel> list = [];
    for (var element in response) {
      list.add(
        PostDetailModel(
          body: element.body,
          email: element.email,
          id: element.id,
          name: element.name,
          postId: element.postId,
          profileImage: _randomValue(_listProfile),
        ),
      );
    }
    return list;
  }

  List<PostDetailModel> get loadingMock => List.filled(
    10,
    PostDetailModel(
      id: 1,
      email: "prueba@gmail.com",
      body: "comentario de prueba",
      name: "prueba",
      postId: 1,
      profileImage:
          'https://media.istockphoto.com/id/183285756/photo/waiting.jpg?s=612x612&w=0&k=20&c=SD1vv6goaFvQZo9ojhHqJpZ8vpLUVYxud5EBLMgSMlI=',
    ),
  );

  final _listProfile = [
    'https://media.istockphoto.com/id/183285756/photo/waiting.jpg?s=612x612&w=0&k=20&c=SD1vv6goaFvQZo9ojhHqJpZ8vpLUVYxud5EBLMgSMlI=',
    'https://writestylesonline.com/wp-content/uploads/2018/11/Three-Statistics-That-Will-Make-You-Rethink-Your-Professional-Profile-Picture.jpg',
    'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ=',
    'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
    'https://t3.ftcdn.net/jpg/03/70/29/26/360_F_370292674_QS5nA0bJgyRD6VzYycTQdSWhhSHQJbQZ.jpg',
    'https://cdn.pixabay.com/photo/2022/09/08/15/16/cute-7441224_1280.jpg',
  ];
  String _randomValue(List<String> lista) {
    final random = Random();
    return lista[random.nextInt(lista.length)];
  }
}
