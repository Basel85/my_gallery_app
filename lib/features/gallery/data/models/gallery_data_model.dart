import 'package:my_gallery_app/features/gallery/domain/entities/gallery_data.dart';

class GalleryDataModel extends GalleryData {
  const GalleryDataModel({required super.images});
  factory GalleryDataModel.fromJson(Map<String, dynamic> json) {
    return GalleryDataModel(images: List<String>.from(json['images']));
  }
}
