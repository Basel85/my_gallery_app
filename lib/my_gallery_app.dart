import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/router/app_router.dart';

class MyGalleryApp extends StatelessWidget {
  final String firstScreen;
  const MyGalleryApp({super.key, required this.firstScreen});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Gallery',
        initialRoute: firstScreen,
        
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
