import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/widgets/gallery_component/gallery_component_icon.dart';

class GalleryComponent extends StatelessWidget {
  final double appBarHeight;
  const GalleryComponent({super.key, this.appBarHeight = 0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 4.w,
        top: 337.h - appBarHeight.h,
        child: const GalleryComponentIcon());
  }
}
