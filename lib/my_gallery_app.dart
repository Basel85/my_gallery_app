import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/router/app_router.dart';

class MyGalleryApp extends StatelessWidget {
  const MyGalleryApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Gallery',
      initialRoute: '/',
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}