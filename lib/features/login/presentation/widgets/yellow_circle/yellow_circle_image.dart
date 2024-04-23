import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_gallery_app/core/helpers/app_assets.dart';

class YellowCircleImage extends StatelessWidget {
  const YellowCircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.yellowCircle,
        width: 104.21.w, height: 104.21.h);
  }
}
