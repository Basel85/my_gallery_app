import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/gallery/domain/entities/gallery_data.dart';

abstract class GalleryRepository {
  Future<Either<NetworkExceptions, String>> uploadImage(
      {required File imageFile});
  Future<Either<NetworkExceptions, GalleryData>> getMyGallery();
}
