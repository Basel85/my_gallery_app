import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/widgets/yellow_circle/yellow_circle_image.dart';

class YellowCircle extends StatelessWidget {
  final double appBarHeight;
  const YellowCircle({super.key, this.appBarHeight=0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 244.53.w,
      top: 355.6.h-appBarHeight.h,
      child: const YellowCircleImage(),
    );
  }
}
