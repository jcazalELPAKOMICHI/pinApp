import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pin_app/core/http/pin_app_client.dart';
import 'package:pin_app/features/post/data/model/post_model.dart';
import 'package:pin_app/features/post/data/repositories/remote_repository.dart';
import 'package:pin_app/features/post/domain/repositories/post_repository.dart';

class MockPinAppClient extends Mock implements PinAppClient {}

void main() {
  late PostRepository repository;

  late MockPinAppClient homeClient;
  final List<PostModel> tArticles = List.filled(
    10,
    PostModel(id: 1, body: "body", title: "title", userId: 2),
  );
  setUp(() async {
    homeClient = MockPinAppClient();
    repository = RemoteRepository(client: homeClient);
  });

  group('get posts', () {
    test('should perform a GET request on /posts', () async {
      // arrange
      when(homeClient.getPost()).thenAnswer(
        // #2
        (realInvocation) async => tArticles,
      );

      // act
      repository.getAllPost();
      // assert
      verify(() => homeClient.getPost());
      verifyNoMoreInteractions(homeClient);
    });
  });
}
