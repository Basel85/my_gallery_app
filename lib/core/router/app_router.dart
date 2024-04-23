import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery_app/core/injection_container/injection_container.dart';
import 'package:my_gallery_app/core/router/app_router_paths.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/get_gallery_data_cubit/get_gallery_data_cubit.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/upload_image_cubit/upload_image_cubit.dart';
import 'package:my_gallery_app/features/gallery/presentation/screens/gallery_screen.dart';
import 'package:my_gallery_app/features/login/presentation/screens/login_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterPaths.gallery:
        
        return MaterialPageRoute(builder: (_) => MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => getIt<GetGalleryDataCubit>()..getGalleryData(),
          ),
        ], child: const GalleryScreen()));
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
