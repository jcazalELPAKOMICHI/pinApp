import 'package:flutter_test/flutter_test.dart' as test;
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:pin_app/core/injectable/config.dart';
import 'package:pin_app/features/post/data/model/post_model.dart';
import 'package:pin_app/features/post/data/repositories/remote_repository.dart';
import 'package:pin_app/features/post/domain/repositories/post_repository.dart';

@Environment("test")
@Injectable(as: PostRepository)
class MockRemoteRepository extends Mock implements RemoteRepository {}

void main() {
  late MockRemoteRepository repository;

  test.setUpAll(() async {
    configureDependencies();
    TestWidgetsFlutterBinding.ensureInitialized();

    repository = MockRemoteRepository();
  });

  test.group('get posts', () {
    test.test('Retornando posts', () async {
      Future<List<PostModel>> getList() async {
        final List<PostModel> posts = List.filled(
          10,
          PostModel(id: 1, body: "body", title: "title", userId: 2),
        );

        return Future.value(posts);
      }

      when(
        repository.getAllPost(),
      ).thenAnswer((realInvocation) async => getList());

      repository.getAllPost();

      verify(() => repository.getAllPost());

      verifyNoMoreInteractions(repository);
    });
  });
}
