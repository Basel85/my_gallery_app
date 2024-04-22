import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/gallery/domain/repositories/gallery_repository.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/get_gallery_data_cubit/get_gallery_data_states.dart';

class GetGalleryDataCubit extends Cubit<GetGalleryDataState> {
  final GalleryRepository _galleryRepository;
  GetGalleryDataCubit(this._galleryRepository) : super(GetGalleryDataInitial());
  static GetGalleryDataCubit get(context) => BlocProvider.of(context);
  Future<void> getGalleryData() async{
    emit(GetGalleryDataLoading());
    final response = await _galleryRepository.getMyGallery();
    response.fold(
      (error) => emit(GetGalleryDataFailure(
          errorMessage: NetworkExceptions.getErrorMessage(error))),
      (galleryData) => emit(GetGalleryDataSuccess(galleryData: galleryData)),
    );
  }
}