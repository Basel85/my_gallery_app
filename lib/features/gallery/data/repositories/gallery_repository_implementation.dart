import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/gallery/data/data_sources/gallery_local_data_source.dart';
import 'package:my_gallery_app/features/gallery/data/data_sources/gallery_remote_data_source.dart';
import 'package:my_gallery_app/features/gallery/data/models/gallery_data_model.dart';
import 'package:my_gallery_app/features/gallery/domain/entities/gallery_data.dart';
import 'package:my_gallery_app/features/gallery/domain/repositories/gallery_repository.dart';

class GalleryRepositoryImplementation extends GalleryRepository {
  final GalleryRemoteDataSource _galleryRemoteDataSource;
  final GalleryLocalDataSource _galleryLocalDataSource;
  String _token = '';

  GalleryRepositoryImplementation(
      {required GalleryRemoteDataSource galleryRemoteDataSource,
      required GalleryLocalDataSource galleryLocalDataSource})
      : _galleryRemoteDataSource = galleryRemoteDataSource,
        _galleryLocalDataSource = galleryLocalDataSource;
  @override
  Future<Either<NetworkExceptions, GalleryData>> getMyGallery() async {
    try {
      _token = await _galleryLocalDataSource.getToken();
      debugPrint("Token: $_token");
      final galleryResponse =
          await _galleryRemoteDataSource.getMyGallery(token: 'Bearer $_token');
      debugPrint("Hello");
      _galleryLocalDataSource.cacheGalleryImages(
          galleryImages: galleryResponse.galleryDataModel.images);
      debugPrint("HI");
      return Right(galleryResponse.galleryDataModel);
    } catch (e) {
      if (e is Exception &&
          e is DioException &&
          e.type == DioExceptionType.connectionError) {
        try {
          final localGalleryImages =
              await _galleryLocalDataSource.getGalleryImages();
          return Right(GalleryDataModel(images: localGalleryImages));
        } catch (e) {
          return Left(NetworkExceptions.getDioException(e));
        }
      } else {
        return Left(NetworkExceptions.getDioException(e));
      }
    }
  }

  @override
  Future<Either<NetworkExceptions, String>> uploadImage(
      {required File imageFile}) async {
    try {
      _token = await _galleryLocalDataSource.getToken();
      final uploadImageResponse = await _galleryRemoteDataSource.uploadImage(
          imageFile: imageFile, token: 'Bearer $_token');
      return Right(uploadImageResponse);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }
}
