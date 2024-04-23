import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/widgets/video_component/video_component_icon.dart';

class VideoComponent extends StatelessWidget {
  final double appBarHeight;
  const VideoComponent({super.key, this.appBarHeight=0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 103.w,
      top: 586.h-appBarHeight.h,
      child: const VideoComponentIcon(),
    );
  }
}
