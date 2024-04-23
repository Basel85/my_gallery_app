import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/video_component/video_component_icon.dart';

class VideoComponent extends StatelessWidget {
  const VideoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 103.w,
      top: 586.h,
      child: const VideoComponentIcon(),
    );
  }
}
