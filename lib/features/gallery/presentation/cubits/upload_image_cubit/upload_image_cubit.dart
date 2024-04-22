import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/gallery/domain/repositories/gallery_repository.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/upload_image_cubit/upload_image_states.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  final ImagePicker _imagePicker;
  final GalleryRepository _galleryRepository;
  UploadImageCubit(this._imagePicker, this._galleryRepository)
      : super(UploadImageInitial());
  static UploadImageCubit get(context) => BlocProvider.of(context);
  Future<void> uploadImage({required ImageSource imageSource}) async {
    emit(UploadImageLoading());
    final pickedImage = await _imagePicker.pickImage(source: imageSource);
    if (pickedImage != null) {
      final imageFile = File(pickedImage.path);
      final response =
          await _galleryRepository.uploadImage(imageFile: imageFile);
      response.fold(
        (error) => emit(UploadImageFailure(
            message: NetworkExceptions.getErrorMessage(error))),
        (success) => emit(UploadImageSuccess(message: success)),
      );
    } else {
      emit(UploadImageFailure(message: 'Failed to upload image'));
    }
  }
}
