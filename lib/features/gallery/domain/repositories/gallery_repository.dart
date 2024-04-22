import 'package:dartz/dartz.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/gallery/domain/entities/gallery_data.dart';
import 'package:my_gallery_app/features/gallery/domain/entities/upload_image_body.dart';

abstract class GalleryRepository {
  Future<Either<NetworkExceptions, String>> uploadImage(
      {required UploadImageBody uploadImageBody});
  Future<Either<NetworkExceptions, GalleryData>> getMyGallery();
}
