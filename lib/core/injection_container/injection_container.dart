import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_app/core/helpers/dio_helper.dart';
import 'package:my_gallery_app/core/utils/first_screen_getter.dart';
import 'package:my_gallery_app/features/gallery/data/data_sources/gallery_local_data_source.dart';
import 'package:my_gallery_app/features/gallery/data/data_sources/gallery_remote_data_source.dart';
import 'package:my_gallery_app/features/gallery/data/repositories/gallery_repository_implementation.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/get_gallery_data_cubit/get_gallery_data_cubit.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/upload_image_cubit/upload_image_cubit.dart';
import 'package:my_gallery_app/features/login/data/data_sources/user_local_data_source.dart';
import 'package:my_gallery_app/features/login/data/data_sources/user_remote_data_source.dart';
import 'package:my_gallery_app/features/login/data/repositories/user_repository_implementation.dart';
import 'package:my_gallery_app/features/login/presentation/cubits/login_cubit/login_cubit.dart';

final getIt = GetIt.instance;
void initDependency() async {
  final imagePicker = ImagePicker();
  const storage = FlutterSecureStorage();
  getIt.registerLazySingleton(() => FirstScreenGetter(storage: storage));
  getIt.registerLazySingleton(() => DioHelper(dio: Dio()));
  getIt.registerLazySingleton(
      () => UserRemoteDataSource(getIt<DioHelper>().configureDio()));
  getIt.registerLazySingleton(() => UserLocalDataSourceImplementation(storage));
  getIt.registerLazySingleton(() => UserRepositoryImplementation(
      getIt<UserRemoteDataSource>(),
      getIt<UserLocalDataSourceImplementation>()));

  getIt
      .registerFactory(() => LoginCubit(getIt<UserRepositoryImplementation>()));

  getIt.registerLazySingleton(
      () => GalleryRemoteDataSource(getIt<DioHelper>().configureDio()));
  getIt.registerLazySingleton(
      () => GalleryLocalDataSourceImplementation(storage));
  getIt.registerLazySingleton(() => GalleryRepositoryImplementation(
      galleryRemoteDataSource: getIt<GalleryRemoteDataSource>(),
      galleryLocalDataSource: getIt<GalleryLocalDataSourceImplementation>()));

  getIt.registerFactory(() =>
      UploadImageCubit(imagePicker, getIt<GalleryRepositoryImplementation>()));

  getIt.registerFactory(
      () => GetGalleryDataCubit(getIt<GalleryRepositoryImplementation>()));
}
