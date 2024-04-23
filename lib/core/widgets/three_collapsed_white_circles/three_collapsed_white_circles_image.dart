import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_gallery_app/core/helpers/app_assets.dart';

class ThreeCollapsedWhiteCirclesImage extends StatelessWidget {
  const ThreeCollapsedWhiteCirclesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.threeCollapsedWhiteCircles,
      width: 195.74.w,
      height: 194.91.h,
    );
  }
}