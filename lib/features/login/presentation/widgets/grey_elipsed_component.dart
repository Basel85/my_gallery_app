import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';

class GreyElipsedComponent extends StatelessWidget {
  final double appBarHeight;
  const GreyElipsedComponent({super.key, this.appBarHeight=0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 79.33.w,
      top: (-77.h)-(appBarHeight.h),
      child: Container(
          height: 683.15.h,
          width: 538.67.w,
          decoration: BoxDecoration(
            color: AppColors.greyColor.withOpacity(0.6),
            shape: BoxShape.circle,
          )),
    );
  }
}
