import 'package:my_gallery_app/features/gallery/domain/entities/gallery_data.dart';

abstract class GetGalleryDataState {}
class GetGalleryDataInitial extends GetGalleryDataState {}
class GetGalleryDataLoading extends GetGalleryDataState {}
class GetGalleryDataSuccess extends GetGalleryDataState {
  final GalleryData galleryData;
  GetGalleryDataSuccess({required this.galleryData});
}
class GetGalleryDataFailure extends GetGalleryDataState {
  final String errorMessage;
  GetGalleryDataFailure({required this.errorMessage});
}