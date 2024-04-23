import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/three_collapsed_white_circles/three_collapsed_white_circles_image.dart';

class ThreeCollapsedWhiteCircles extends StatelessWidget {
  const ThreeCollapsedWhiteCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 193.94.w,
      top: 380.37.h,
      child: const ThreeCollapsedWhiteCirclesImage(),
    );
  }
}
