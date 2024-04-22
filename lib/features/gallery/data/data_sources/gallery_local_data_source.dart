import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class GalleryLocalDataSource {
  Future<String> getToken();
  void cacheGalleryImages({required List<String> galleryImages});
  Future<List<String>> getGalleryImages();
}
class GalleryLocalDataSourceImplementation extends GalleryLocalDataSource {
  final FlutterSecureStorage _storage;
  GalleryLocalDataSourceImplementation(this._storage);
  @override
  void cacheGalleryImages({required List<String> galleryImages}) {
    _storage.write(key: 'galleryImages', value: jsonEncode(galleryImages));
  }
  @override
  Future<List<String>> getGalleryImages() async{
    final galleryImages = await _storage.read(key: 'galleryImages');
    if (galleryImages != null) {
      return List<String>.from(jsonDecode(galleryImages));
    } else {
      return [];
    }
  }
  @override
  Future<String> getToken() async {
    return await _storage.read(key: 'token') ?? '';
  }
}
