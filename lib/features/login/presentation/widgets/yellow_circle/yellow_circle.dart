import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/yellow_circle/yellow_circle_image.dart';

class YellowCircle extends StatelessWidget {
  const YellowCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 244.53.w,
      top: 355.6.h,
      child: const YellowCircleImage(),
    );
  }
}
