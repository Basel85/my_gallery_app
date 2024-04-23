import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_gallery_app/core/helpers/app_assets.dart';

class GalleryComponentIcon extends StatelessWidget {
  const GalleryComponentIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.galleryIcon,
        width: 202.54.w, height: 202.54.h);
  }
}