import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/router/app_router_paths.dart';
import 'package:my_gallery_app/features/gallery/presentation/screens/gallery_screen.dart';
import 'package:my_gallery_app/features/login/presentation/screens/login_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterPaths.gallery:
        return MaterialPageRoute(builder: (_) => const GalleryScreen());
      case AppRouterPaths.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
