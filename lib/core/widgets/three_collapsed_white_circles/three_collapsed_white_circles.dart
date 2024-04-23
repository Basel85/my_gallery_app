import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/widgets/three_collapsed_white_circles/three_collapsed_white_circles_image.dart';

class ThreeCollapsedWhiteCircles extends StatelessWidget {
  final double appBarHeight;
  const ThreeCollapsedWhiteCircles({super.key, this.appBarHeight = 0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 193.94.w,
      top: 380.37.h-appBarHeight.h,
      child: const ThreeCollapsedWhiteCirclesImage(),
    );
  }
}
