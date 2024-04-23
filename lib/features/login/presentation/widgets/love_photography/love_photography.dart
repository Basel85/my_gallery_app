import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/love_photography/love_photography_image.dart';

class LovePhotography extends StatelessWidget {
  const LovePhotography({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 74.99.w,
      top: 58.75.h,
      child: const LovePhotographyImage(),
    );
  }
}
