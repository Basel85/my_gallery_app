import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/injection_container/injection_container.dart';
import 'package:my_gallery_app/core/utils/first_screen_getter.dart';
import 'package:my_gallery_app/my_gallery_app.dart';
import 'package:my_gallery_app/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  Bloc.observer = Observer();
  initDependency();
  String firstScreen = await getIt<FirstScreenGetter>().getTheFirstScreen();
  runApp(MyGalleryApp(
    firstScreen: firstScreen,
  ));
}
