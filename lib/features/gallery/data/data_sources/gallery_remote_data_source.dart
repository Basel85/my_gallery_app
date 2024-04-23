import 'dart:io';

import 'package:dio/dio.dart';
import 'package:my_gallery_app/core/api_urls/api_urls.dart';
import 'package:my_gallery_app/features/gallery/data/models/gallery_response.dart';
import 'package:retrofit/retrofit.dart';
part 'gallery_remote_data_source.g.dart';

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class GalleryRemoteDataSource {
  factory GalleryRemoteDataSource(Dio dio, {String baseUrl}) =
      _GalleryRemoteDataSource;

  @GET(ApiUrls.getGalleryDataEndPoint)
  Future<GalleryResponse> getMyGallery({@Header('Authorization') required String token});

  @POST(ApiUrls.uploadImageEndPoint)
  @MultiPart()
  Future<String> uploadImage(
      {@Part() required File imageFile,
      @Part() @Header('Authorization') required String token});
}
