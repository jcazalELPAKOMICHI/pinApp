import 'package:injectable/injectable.dart';

abstract class IConfig {
  String get baseUrl;

  Map<String, String> get headers;
}

@Injectable(as: IConfig)
class AppConfig extends IConfig {
  @override
  String get baseUrl => "https://jsonplaceholder.typicode.com/";

  @override
  Map<String, String> get headers => {
    'accept': 'application/json',
    'Content-Type': 'application/json',
  };
}
