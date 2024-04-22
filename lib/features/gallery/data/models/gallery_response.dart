import 'package:my_gallery_app/features/gallery/data/models/gallery_data_model.dart';

class GalleryResponse {
  final String status;
  final GalleryDataModel galleryDataModel;
  final String message;

  GalleryResponse(
      {required this.status,
      required this.galleryDataModel,
      required this.message});

  factory GalleryResponse.fromJson(Map<String, dynamic> json) {
    return GalleryResponse(
        status: json['status'] ?? "No status",
        galleryDataModel: GalleryDataModel.fromJson(json['data'] ?? {}),
        message: json['message'] ?? "No message");
  }
}
