import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/router/app_router.dart';

class MyGalleryApp extends StatelessWidget {
  final String firstScreen;
  const MyGalleryApp({super.key, required this.firstScreen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Gallery',
      initialRoute: firstScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
