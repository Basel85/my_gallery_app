import 'package:dio/dio.dart';
import 'package:my_gallery_app/core/web_services/api_urls/api_urls.dart';
import 'package:my_gallery_app/features/login/data/models/login_response.dart';
import 'package:my_gallery_app/features/login/domain/entities/login_request_body.dart';
import 'package:retrofit/retrofit.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @POST(ApiUrls.loginEndPoint)
  Future<LoginResponse> login(
      {@Body() required LoginRequestBody loginRequestBody});
}
