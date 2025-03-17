import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pin_app/core/http/pin_app_client.dart';
import 'package:pin_app/features/post/data/model/post_model.dart';

import 'client_test.mocks.dart';

@GenerateMocks([PinAppClient])
void main() {
  late PinAppClient service;
  group("#fecthPost", () {
    setUp(() {
      service = MockPinAppClient();
    });
    test('Prueba de cliente exitosa', () async {
      final randomListOfPosts = List.generate(10, (_) => generatePostModel());

      when(service.getPost()).thenAnswer(
        // #2
        (realInvocation) async => randomListOfPosts,
      );
      final result = await service.getPost();

      expect(result, randomListOfPosts);

      // Verificar que el método se haya llamado una vez
      verify(service.getPost()).called(1);
    });
  });
}

final random = Random();
PostModel generatePostModel() {
  final id = random.nextInt(100);
  return PostModel(body: "prueba", id: id, title: "Pruebas", userId: 1);
}
