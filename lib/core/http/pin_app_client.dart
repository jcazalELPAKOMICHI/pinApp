import 'package:dio/dio.dart';
import 'package:pin_app/features/post/data/model/post_model.dart';
import 'package:retrofit/retrofit.dart';

part 'pin_app_client.g.dart';

@RestApi()
abstract class PinAppClient {
  factory PinAppClient(Dio dio) = _PinAppClient;

  @GET("posts")
  Future<List<PostModel>> getPost();
}
