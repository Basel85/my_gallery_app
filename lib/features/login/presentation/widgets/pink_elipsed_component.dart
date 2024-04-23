import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';

class PinkElipsedComponent extends StatelessWidget {
  final double appBarHeight;
  const PinkElipsedComponent({super.key, this.appBarHeight=0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -196.86.w,
      top: 58.75.h-appBarHeight.h,
      child: Container(
          height: 593.69.h,
          width: 468.13.w,
          decoration: BoxDecoration(
            color: AppColors.pinkColor.withOpacity(0.6),
            shape: BoxShape.circle,
          )),
    );
  }
}
