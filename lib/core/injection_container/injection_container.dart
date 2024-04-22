// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';

// final getIt = GetIt.instance;
// Future<void> initDependency() async {
//   final sharedPreferences = await SharedPreferences.getInstance();
//   getIt.registerLazySingleton(
//       () => PostsRemoteDataSource(DioHelper(dio: Dio()).configureDio()));
//   getIt.registerLazySingleton(() =>
//       PostsLocalDataSourceImplementation(sharedPreferences: sharedPreferences));
//   getIt.registerLazySingleton(() => PostsRepositoryImplementation(
//       getIt<PostsRemoteDataSource>(),
//       getIt<PostsLocalDataSourceImplementation>()));

//   getIt.registerLazySingleton(
//       () => GetAllPostsUseCase(getIt<PostsRepositoryImplementation>()));
//   getIt.registerLazySingleton(
//       () => PostsBloc(getAllPostsUseCase: getIt<GetAllPostsUseCase>()));

//   getIt.registerFactory(
//       () => CreatePostUseCase(getIt<PostsRepositoryImplementation>()));

//   getIt.registerLazySingleton(
//       () => UpdatePostUseCase(getIt<PostsRepositoryImplementation>()));
  
//   getIt.registerLazySingleton(
//       () => DeletePostUseCase(getIt<PostsRepositoryImplementation>()));

//   getIt.registerFactory(() => AddPostBloc(getIt<CreatePostUseCase>()));

//   getIt.registerFactory(() => UpdatePostBloc(getIt<UpdatePostUseCase>()));

//   getIt.registerFactory(() => DeletePostBloc(getIt<DeletePostUseCase>()));
// }
