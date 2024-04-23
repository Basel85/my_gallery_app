import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/injection_container/injection_container.dart';
import 'package:my_gallery_app/core/router/app_router.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/upload_image_cubit/upload_image_cubit.dart';

class MyGalleryApp extends StatelessWidget {
  final String firstScreen;
  const MyGalleryApp({super.key, required this.firstScreen});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => getIt<UploadImageCubit>(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Gallery',
          initialRoute: firstScreen,
          theme: ThemeData(useMaterial3: true),
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
