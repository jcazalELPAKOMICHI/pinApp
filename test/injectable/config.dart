import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config.config.dart';

const testEnv = 'test';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'testInit',
  preferRelativeImports: true, // default
  asExtension: true, // default
  generateForDir: ['test', 'lib'],
)
Future<GetIt> configureTestDependencies() async {
  return getIt.testInit(environment: testEnv);
}
