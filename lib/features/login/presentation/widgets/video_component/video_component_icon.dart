import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_gallery_app/core/helpers/app_assets.dart';

class VideoComponentIcon extends StatelessWidget {
  const VideoComponentIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.videoIcon, width: 242.18.w, height: 242.18.h);
  }
}