import 'package:dio/dio.dart';
import 'package:my_gallery_app/core/api_urls/api_urls.dart';
import 'package:my_gallery_app/features/login/data/models/login_response.dart';
import 'package:my_gallery_app/features/login/domain/entities/login_request_body.dart';
import 'package:retrofit/retrofit.dart';
part 'user_remote_data_source.g.dart';

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class UserRemoteDataSource {
  factory UserRemoteDataSource(Dio dio, {String baseUrl}) = _UserRemoteDataSource;

  @POST(ApiUrls.loginEndPoint)
  Future<LoginResponse> login(
      {@Body() required LoginRequestBody loginRequestBody});
}