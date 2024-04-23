import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_gallery_app/core/helpers/app_assets.dart';

class LovePhotographyImage extends StatelessWidget {
  const LovePhotographyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.lovePhotograhpy,
        width: 131.56.w, height: 131.56.w);
  }
}
