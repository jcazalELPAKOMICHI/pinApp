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
    ),
  );
}
